
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int ip_dyn_features; int ip_alloc_sem; } ;


 int ENOENT ;
 int INODE_JOURNAL (struct inode*) ;
 int ML_ERROR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int down_read (int *) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_entry (char*,unsigned long long) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_extent_map_get_blocks (struct inode*,scalar_t__,scalar_t__*,int *,int *) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static sector_t ocfs2_bmap(struct address_space *mapping, sector_t block)
{
 sector_t status;
 u64 p_blkno = 0;
 int err = 0;
 struct inode *inode = mapping->host;

 mlog_entry("(block = %llu)\n", (unsigned long long)block);




 if (!INODE_JOURNAL(inode)) {
  err = ocfs2_inode_lock(inode, ((void*)0), 0);
  if (err) {
   if (err != -ENOENT)
    mlog_errno(err);
   goto bail;
  }
  down_read(&OCFS2_I(inode)->ip_alloc_sem);
 }

 if (!(OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
  err = ocfs2_extent_map_get_blocks(inode, block, &p_blkno, ((void*)0),
        ((void*)0));

 if (!INODE_JOURNAL(inode)) {
  up_read(&OCFS2_I(inode)->ip_alloc_sem);
  ocfs2_inode_unlock(inode, 0);
 }

 if (err) {
  mlog(ML_ERROR, "get_blocks() failed, block = %llu\n",
       (unsigned long long)block);
  mlog_errno(err);
  goto bail;
 }

bail:
 status = err ? 0 : p_blkno;

 mlog_exit((int)status);

 return status;
}
