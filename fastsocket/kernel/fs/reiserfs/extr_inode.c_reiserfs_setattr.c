
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_uid; scalar_t__ i_gid; int i_sb; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_uid; int ia_gid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ i_prealloc_count; } ;


 int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_KILL_SGID ;
 unsigned int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 unsigned int ATTR_UID ;
 int EDQUOT ;
 int EFBIG ;
 int EINVAL ;
 scalar_t__ KEY_FORMAT_3_5 ;
 scalar_t__ MAX_NON_LFS ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int REISERFS_QUOTA_DEL_BLOCKS (int ) ;
 int REISERFS_QUOTA_INIT_BLOCKS (int ) ;
 scalar_t__ STAT_DATA_V1 ;
 int generic_cont_expand_simple (struct inode*,scalar_t__) ;
 scalar_t__ get_inode_item_key_version (struct inode*) ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,int) ;
 int mark_inode_dirty (struct inode*) ;
 int reiserfs_acl_chmod (struct inode*) ;
 int reiserfs_chown_xattrs (struct inode*,struct iattr*) ;
 int reiserfs_discard_prealloc (struct reiserfs_transaction_handle*,struct inode*) ;
 scalar_t__ reiserfs_posixacl (int ) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 scalar_t__ vfs_dq_transfer (struct inode*,struct iattr*) ;

int reiserfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 int error;
 unsigned int ia_valid;


 ia_valid = attr->ia_valid &= ~(ATTR_KILL_SUID|ATTR_KILL_SGID);

 reiserfs_write_lock(inode->i_sb);
 if (attr->ia_valid & ATTR_SIZE) {



  if (get_inode_item_key_version(inode) == KEY_FORMAT_3_5 &&
      attr->ia_size > MAX_NON_LFS) {
   error = -EFBIG;
   goto out;
  }

  if (attr->ia_size > inode->i_size) {
   error = generic_cont_expand_simple(inode, attr->ia_size);
   if (REISERFS_I(inode)->i_prealloc_count > 0) {
    int err;
    struct reiserfs_transaction_handle th;

    err = journal_begin(&th, inode->i_sb, 4);
    if (!err) {
     reiserfs_discard_prealloc(&th, inode);
     err = journal_end(&th, inode->i_sb, 4);
    }
    if (err)
     error = err;
   }
   if (error)
    goto out;




   attr->ia_valid |= (ATTR_MTIME | ATTR_CTIME);
  }
 }

 if ((((attr->ia_valid & ATTR_UID) && (attr->ia_uid & ~0xffff)) ||
      ((attr->ia_valid & ATTR_GID) && (attr->ia_gid & ~0xffff))) &&
     (get_inode_sd_version(inode) == STAT_DATA_V1)) {

  error = -EINVAL;
  goto out;
 }

 error = inode_change_ok(inode, attr);
 if (!error) {
  if ((ia_valid & ATTR_UID && attr->ia_uid != inode->i_uid) ||
      (ia_valid & ATTR_GID && attr->ia_gid != inode->i_gid)) {
   error = reiserfs_chown_xattrs(inode, attr);

   if (!error) {
    struct reiserfs_transaction_handle th;
    int jbegin_count =
        2 *
        (REISERFS_QUOTA_INIT_BLOCKS(inode->i_sb) +
         REISERFS_QUOTA_DEL_BLOCKS(inode->i_sb)) +
        2;


    error =
        journal_begin(&th, inode->i_sb,
        jbegin_count);
    if (error)
     goto out;
    error =
        vfs_dq_transfer(inode, attr) ? -EDQUOT : 0;
    if (error) {
     journal_end(&th, inode->i_sb,
          jbegin_count);
     goto out;
    }


    if (attr->ia_valid & ATTR_UID)
     inode->i_uid = attr->ia_uid;
    if (attr->ia_valid & ATTR_GID)
     inode->i_gid = attr->ia_gid;
    mark_inode_dirty(inode);
    error =
        journal_end(&th, inode->i_sb, jbegin_count);
   }
  }
  if (!error)
   error = inode_setattr(inode, attr);
 }

 if (!error && reiserfs_posixacl(inode->i_sb)) {
  if (attr->ia_valid & ATTR_MODE)
   error = reiserfs_acl_chmod(inode);
 }

      out:
 reiserfs_write_unlock(inode->i_sb);
 return error;
}
