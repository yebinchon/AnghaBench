
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_mutex; } ;
struct buffer_head {int dummy; } ;


 int EINVAL ;
 int INODE_ALLOC_SYSTEM_INODE ;
 int ML_ERROR ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int mlog (int ,char*,int,...) ;
 int mlog_entry (char*,unsigned long long) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_get_suballoc_slot_bit (struct ocfs2_super*,scalar_t__,scalar_t__*,scalar_t__*) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,scalar_t__) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_test_suballoc_bit (struct ocfs2_super*,struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int*) ;

int ocfs2_test_inode_bit(struct ocfs2_super *osb, u64 blkno, int *res)
{
 int status;
 u16 suballoc_bit = 0, suballoc_slot = 0;
 struct inode *inode_alloc_inode;
 struct buffer_head *alloc_bh = ((void*)0);

 mlog_entry("blkno: %llu", (unsigned long long)blkno);

 status = ocfs2_get_suballoc_slot_bit(osb, blkno, &suballoc_slot,
          &suballoc_bit);
 if (status < 0) {
  mlog(ML_ERROR, "get alloc slot and bit failed %d\n", status);
  goto bail;
 }

 inode_alloc_inode =
  ocfs2_get_system_file_inode(osb, INODE_ALLOC_SYSTEM_INODE,
         suballoc_slot);
 if (!inode_alloc_inode) {


  status = -EINVAL;
  mlog(ML_ERROR, "unable to get alloc inode in slot %u\n",
       (u32)suballoc_slot);
  goto bail;
 }

 mutex_lock(&inode_alloc_inode->i_mutex);
 status = ocfs2_inode_lock(inode_alloc_inode, &alloc_bh, 0);
 if (status < 0) {
  mutex_unlock(&inode_alloc_inode->i_mutex);
  mlog(ML_ERROR, "lock on alloc inode on slot %u failed %d\n",
       (u32)suballoc_slot, status);
  goto bail;
 }

 status = ocfs2_test_suballoc_bit(osb, inode_alloc_inode, alloc_bh,
      blkno, suballoc_bit, res);
 if (status < 0)
  mlog(ML_ERROR, "test suballoc bit failed %d\n", status);

 ocfs2_inode_unlock(inode_alloc_inode, 0);
 mutex_unlock(&inode_alloc_inode->i_mutex);

 iput(inode_alloc_inode);
 brelse(alloc_bh);
bail:
 mlog_exit(status);
 return status;
}
