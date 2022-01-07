
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_nlink; int i_ctime; int i_mtime; int i_sb; } ;
struct ext3_dir_entry_2 {int inode; } ;
struct dentry {struct inode* d_inode; int d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_9__ {int h_sync; } ;
typedef TYPE_1__ handle_t ;


 int CURRENT_TIME_SEC ;
 int EIO ;
 int ENOENT ;
 int EXT3_DELETE_TRANS_BLOCKS (int ) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int brelse (struct buffer_head*) ;
 int drop_nlink (struct inode*) ;
 int ext3_delete_entry (TYPE_1__*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*) ;
 struct buffer_head* ext3_find_entry (struct inode*,int *,struct ext3_dir_entry_2**) ;
 TYPE_1__* ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (TYPE_1__*) ;
 int ext3_mark_inode_dirty (TYPE_1__*,struct inode*) ;
 int ext3_orphan_add (TYPE_1__*,struct inode*) ;
 int ext3_update_dx_flag (struct inode*) ;
 int ext3_warning (int ,char*,char*,scalar_t__,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int trace_ext3_unlink_enter (struct inode*,struct dentry*) ;
 int trace_ext3_unlink_exit (struct dentry*,int) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int ext3_unlink(struct inode * dir, struct dentry *dentry)
{
 int retval;
 struct inode * inode;
 struct buffer_head * bh;
 struct ext3_dir_entry_2 * de;
 handle_t *handle;

 trace_ext3_unlink_enter(dir, dentry);


 vfs_dq_init(dentry->d_inode);
 handle = ext3_journal_start(dir, EXT3_DELETE_TRANS_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  handle->h_sync = 1;

 retval = -ENOENT;
 bh = ext3_find_entry(dir, &dentry->d_name, &de);
 if (!bh)
  goto end_unlink;

 inode = dentry->d_inode;

 retval = -EIO;
 if (le32_to_cpu(de->inode) != inode->i_ino)
  goto end_unlink;

 if (!inode->i_nlink) {
  ext3_warning (inode->i_sb, "ext3_unlink",
         "Deleting nonexistent file (%lu), %d",
         inode->i_ino, inode->i_nlink);
  inode->i_nlink = 1;
 }
 retval = ext3_delete_entry(handle, dir, de, bh);
 if (retval)
  goto end_unlink;
 dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
 ext3_update_dx_flag(dir);
 ext3_mark_inode_dirty(handle, dir);
 drop_nlink(inode);
 if (!inode->i_nlink)
  ext3_orphan_add(handle, inode);
 inode->i_ctime = dir->i_ctime;
 ext3_mark_inode_dirty(handle, inode);
 retval = 0;

end_unlink:
 ext3_journal_stop(handle);
 brelse (bh);
 trace_ext3_unlink_exit(dentry, retval);
 return retval;
}
