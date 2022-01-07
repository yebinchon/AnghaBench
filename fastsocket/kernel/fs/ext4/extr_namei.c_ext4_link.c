
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_sb; int i_count; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;
typedef int handle_t ;


 int EMLINK ;
 int ENOENT ;
 int ENOSPC ;
 scalar_t__ EXT4_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 scalar_t__ EXT4_LINK_MAX ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_inc (int *) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext4_add_entry (int *,struct dentry*,struct inode*) ;
 int ext4_current_time (struct inode*) ;
 int ext4_handle_sync (int *) ;
 int ext4_inc_count (int *,struct inode*) ;
 int * ext4_journal_start (struct inode*,scalar_t__) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int ext4_link(struct dentry *old_dentry,
       struct inode *dir, struct dentry *dentry)
{
 handle_t *handle;
 struct inode *inode = old_dentry->d_inode;
 int err, retries = 0;

 if (inode->i_nlink >= EXT4_LINK_MAX)
  return -EMLINK;





 if (inode->i_nlink == 0)
  return -ENOENT;

retry:
 handle = ext4_journal_start(dir, EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 inode->i_ctime = ext4_current_time(inode);
 ext4_inc_count(handle, inode);
 atomic_inc(&inode->i_count);

 err = ext4_add_entry(handle, dentry, inode);
 if (!err) {
  ext4_mark_inode_dirty(handle, inode);
  d_instantiate(dentry, inode);
 } else {
  drop_nlink(inode);
  iput(inode);
 }
 ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
