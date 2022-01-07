
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_cached_block_free {struct ocfs2_cached_block_free* free_next; int free_bit; scalar_t__ free_blk; } ;
struct inode {int i_mutex; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_SUBALLOC_FREE ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_cached_block_free*) ;
 int mlog (int ,char*,int ,unsigned long long) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_extend_trans (int *,int ) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,int ,int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_which_suballoc_group (scalar_t__,int ) ;

__attribute__((used)) static int ocfs2_free_cached_blocks(struct ocfs2_super *osb,
        int sysfile_type,
        int slot,
        struct ocfs2_cached_block_free *head)
{
 int ret;
 u64 bg_blkno;
 handle_t *handle;
 struct inode *inode;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_cached_block_free *tmp;

 inode = ocfs2_get_system_file_inode(osb, sysfile_type, slot);
 if (!inode) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto out;
 }

 mutex_lock(&inode->i_mutex);

 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_mutex;
 }

 handle = ocfs2_start_trans(osb, OCFS2_SUBALLOC_FREE);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock;
 }

 while (head) {
  bg_blkno = ocfs2_which_suballoc_group(head->free_blk,
            head->free_bit);
  mlog(0, "Free bit: (bit %u, blkno %llu)\n",
       head->free_bit, (unsigned long long)head->free_blk);

  ret = ocfs2_free_suballoc_bits(handle, inode, di_bh,
            head->free_bit, bg_blkno, 1);
  if (ret) {
   mlog_errno(ret);
   goto out_journal;
  }

  ret = ocfs2_extend_trans(handle, OCFS2_SUBALLOC_FREE);
  if (ret) {
   mlog_errno(ret);
   goto out_journal;
  }

  tmp = head;
  head = head->free_next;
  kfree(tmp);
 }

out_journal:
 ocfs2_commit_trans(osb, handle);

out_unlock:
 ocfs2_inode_unlock(inode, 1);
 brelse(di_bh);
out_mutex:
 mutex_unlock(&inode->i_mutex);
 iput(inode);
out:
 while(head) {

  tmp = head;
  head = head->free_next;
  kfree(tmp);
 }

 return ret;
}
