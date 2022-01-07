
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_ino; int i_mtime; int i_ctime; scalar_t__ i_size; int i_version; int i_nlink; int i_sb; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct dentry {struct inode* d_inode; int d_name; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 int EXT4_DELETE_TRANS_BLOCKS (int ) ;
 int EXT4_DIR_LINK_EMPTY (struct inode*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int clear_nlink (struct inode*) ;
 int empty_dir (struct inode*) ;
 int ext4_current_time (struct inode*) ;
 int ext4_dec_count (int *,struct inode*) ;
 int ext4_delete_entry (int *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 struct buffer_head* ext4_find_entry (struct inode*,int *,struct ext4_dir_entry_2**) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_update_dx_flag (struct inode*) ;
 int ext4_warning (int ,char*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int ext4_rmdir(struct inode *dir, struct dentry *dentry)
{
 int retval;
 struct inode *inode;
 struct buffer_head *bh;
 struct ext4_dir_entry_2 *de;
 handle_t *handle;



 vfs_dq_init(dentry->d_inode);
 handle = ext4_journal_start(dir, EXT4_DELETE_TRANS_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 retval = -ENOENT;
 bh = ext4_find_entry(dir, &dentry->d_name, &de);
 if (!bh)
  goto end_rmdir;

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 inode = dentry->d_inode;

 retval = -EIO;
 if (le32_to_cpu(de->inode) != inode->i_ino)
  goto end_rmdir;

 retval = -ENOTEMPTY;
 if (!empty_dir(inode))
  goto end_rmdir;

 retval = ext4_delete_entry(handle, dir, de, bh);
 if (retval)
  goto end_rmdir;
 if (!EXT4_DIR_LINK_EMPTY(inode))
  ext4_warning(inode->i_sb,
        "empty directory has too many links (%d)",
        inode->i_nlink);
 inode->i_version++;
 clear_nlink(inode);



 inode->i_size = 0;
 ext4_orphan_add(handle, inode);
 inode->i_ctime = dir->i_ctime = dir->i_mtime = ext4_current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_dec_count(handle, dir);
 ext4_update_dx_flag(dir);
 ext4_mark_inode_dirty(handle, dir);

end_rmdir:
 ext4_journal_stop(handle);
 brelse(bh);
 return retval;
}
