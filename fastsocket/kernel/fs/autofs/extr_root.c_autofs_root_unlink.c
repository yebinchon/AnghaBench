
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct dentry {unsigned long d_time; int d_name; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {TYPE_1__* symlink; int symlink_bitmap; struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {unsigned int ino; } ;
struct TYPE_2__ {int data; } ;


 unsigned int AUTOFS_FIRST_SYMLINK ;
 unsigned int AUTOFS_MAX_SYMLINKS ;
 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 int EISDIR ;
 int ENOENT ;
 int autofs_hash_delete (struct autofs_dir_ent*) ;
 struct autofs_dir_ent* autofs_hash_lookup (struct autofs_dirhash*,int *) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int capable (int ) ;
 int clear_bit (unsigned int,int ) ;
 int d_drop (struct dentry*) ;
 int kfree (int ) ;
 int lock_kernel () ;
 int test_bit (unsigned int,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int autofs_root_unlink(struct inode *dir, struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs_sbi(dir->i_sb);
 struct autofs_dirhash *dh = &sbi->dirhash;
 struct autofs_dir_ent *ent;
 unsigned int n;


 lock_kernel();
 if (!autofs_oz_mode(sbi) && !capable(CAP_SYS_ADMIN)) {
  unlock_kernel();
  return -EACCES;
 }

 ent = autofs_hash_lookup(dh, &dentry->d_name);
 if (!ent) {
  unlock_kernel();
  return -ENOENT;
 }

 n = ent->ino - AUTOFS_FIRST_SYMLINK;
 if (n >= AUTOFS_MAX_SYMLINKS) {
  unlock_kernel();
  return -EISDIR;
 }
 if (!test_bit(n,sbi->symlink_bitmap)) {
  unlock_kernel();
  return -EINVAL;
 }

 dentry->d_time = (unsigned long)(struct autofs_dirhash *)((void*)0);
 autofs_hash_delete(ent);
 clear_bit(n,sbi->symlink_bitmap);
 kfree(sbi->symlink[n].data);
 d_drop(dentry);

 unlock_kernel();
 return 0;
}
