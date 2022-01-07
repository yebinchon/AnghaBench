
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fs_uid; scalar_t__ fs_gid; scalar_t__ quiet; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_mode; } ;
struct dentry {struct inode* d_inode; int d_sb; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 int FAT_VALID_MODE ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 unsigned int TIMES_SET_FLAGS ;
 scalar_t__ fat_allow_set_time (struct msdos_sb_info*,struct inode*) ;
 int fat_cont_expand (struct inode*,scalar_t__) ;
 scalar_t__ fat_sanitize_mode (struct msdos_sb_info*,struct inode*,int*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;

int fat_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct msdos_sb_info *sbi = MSDOS_SB(dentry->d_sb);
 struct inode *inode = dentry->d_inode;
 unsigned int ia_valid;
 int error;






 if (attr->ia_valid & ATTR_SIZE) {
  if (attr->ia_size > inode->i_size) {
   error = fat_cont_expand(inode, attr->ia_size);
   if (error || attr->ia_valid == ATTR_SIZE)
    goto out;
   attr->ia_valid &= ~ATTR_SIZE;
  }
 }


 ia_valid = attr->ia_valid;
 if (ia_valid & TIMES_SET_FLAGS) {
  if (fat_allow_set_time(sbi, inode))
   attr->ia_valid &= ~TIMES_SET_FLAGS;
 }

 error = inode_change_ok(inode, attr);
 attr->ia_valid = ia_valid;
 if (error) {
  if (sbi->options.quiet)
   error = 0;
  goto out;
 }

 if (((attr->ia_valid & ATTR_UID) &&
      (attr->ia_uid != sbi->options.fs_uid)) ||
     ((attr->ia_valid & ATTR_GID) &&
      (attr->ia_gid != sbi->options.fs_gid)) ||
     ((attr->ia_valid & ATTR_MODE) &&
      (attr->ia_mode & ~FAT_VALID_MODE)))
  error = -EPERM;

 if (error) {
  if (sbi->options.quiet)
   error = 0;
  goto out;
 }





 if (attr->ia_valid & ATTR_MODE) {
  if (fat_sanitize_mode(sbi, inode, &attr->ia_mode) < 0)
   attr->ia_valid &= ~ATTR_MODE;
 }

 if (attr->ia_valid)
  error = inode_setattr(inode, attr);
out:
 return error;
}
