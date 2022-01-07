
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_uid; scalar_t__ i_gid; scalar_t__ i_size; int i_sb; scalar_t__ i_nlink; int i_mode; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; scalar_t__ ia_size; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
struct dentry {struct inode* d_inode; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ i_disksize; } ;


 unsigned int const ATTR_GID ;
 unsigned int const ATTR_MODE ;
 int ATTR_SIZE ;
 unsigned int const ATTR_UID ;
 int EDQUOT ;
 int EFBIG ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAXQUOTAS_DEL_BLOCKS (int ) ;
 int EXT4_MAXQUOTAS_INIT_BLOCKS (int ) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ S_ISREG (int ) ;
 int ext4_acl_chmod (struct inode*) ;
 int ext4_begin_ordered_truncate (struct inode*,scalar_t__) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 int ext4_std_error (int ,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_truncate (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 scalar_t__ vfs_dq_transfer (struct inode*,struct iattr*) ;

int ext4_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 int error, rc = 0;
 const unsigned int ia_valid = attr->ia_valid;

 error = inode_change_ok(inode, attr);
 if (error)
  return error;

 if ((ia_valid & ATTR_UID && attr->ia_uid != inode->i_uid) ||
  (ia_valid & ATTR_GID && attr->ia_gid != inode->i_gid)) {
  handle_t *handle;



  handle = ext4_journal_start(inode, (EXT4_MAXQUOTAS_INIT_BLOCKS(inode->i_sb)+
     EXT4_MAXQUOTAS_DEL_BLOCKS(inode->i_sb))+3);
  if (IS_ERR(handle)) {
   error = PTR_ERR(handle);
   goto err_out;
  }
  error = vfs_dq_transfer(inode, attr) ? -EDQUOT : 0;
  if (error) {
   ext4_journal_stop(handle);
   return error;
  }


  if (attr->ia_valid & ATTR_UID)
   inode->i_uid = attr->ia_uid;
  if (attr->ia_valid & ATTR_GID)
   inode->i_gid = attr->ia_gid;
  error = ext4_mark_inode_dirty(handle, inode);
  ext4_journal_stop(handle);
 }

 if (attr->ia_valid & ATTR_SIZE) {
  if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))) {
   struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);

   if (attr->ia_size > sbi->s_bitmap_maxbytes)
    return -EFBIG;
  }
 }

 if (S_ISREG(inode->i_mode) &&
     attr->ia_valid & ATTR_SIZE &&
     (attr->ia_size < inode->i_size)) {
  handle_t *handle;

  handle = ext4_journal_start(inode, 3);
  if (IS_ERR(handle)) {
   error = PTR_ERR(handle);
   goto err_out;
  }

  error = ext4_orphan_add(handle, inode);
  EXT4_I(inode)->i_disksize = attr->ia_size;
  rc = ext4_mark_inode_dirty(handle, inode);
  if (!error)
   error = rc;
  ext4_journal_stop(handle);

  if (ext4_should_order_data(inode)) {
   error = ext4_begin_ordered_truncate(inode,
           attr->ia_size);
   if (error) {

    handle = ext4_journal_start(inode, 3);
    if (IS_ERR(handle)) {
     ext4_orphan_del(((void*)0), inode);
     goto err_out;
    }
    ext4_orphan_del(handle, inode);
    ext4_journal_stop(handle);
    goto err_out;
   }
  }
  ext4_truncate(inode);
 }

 rc = inode_setattr(inode, attr);




 if (inode->i_nlink)
  ext4_orphan_del(((void*)0), inode);

 if (!rc && (ia_valid & ATTR_MODE))
  rc = ext4_acl_chmod(inode);

err_out:
 ext4_std_error(inode->i_sb, error);
 if (!error)
  error = rc;
 return error;
}
