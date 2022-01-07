
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int name; } ;
struct dentry {unsigned long d_time; TYPE_1__ d_name; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {struct dentry* dentry; scalar_t__ ino; } ;


 unsigned int AUTOFS_FIRST_DIR_INO ;
 int EACCES ;
 int ENOENT ;
 int ENOTDIR ;
 int autofs_hash_delete (struct autofs_dir_ent*) ;
 struct autofs_dir_ent* autofs_hash_lookup (struct autofs_dirhash*,TYPE_1__*) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int d_drop (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int lock_kernel () ;
 int printk (char*,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int autofs_root_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs_sbi(dir->i_sb);
 struct autofs_dirhash *dh = &sbi->dirhash;
 struct autofs_dir_ent *ent;

 lock_kernel();
 if (!autofs_oz_mode(sbi)) {
  unlock_kernel();
  return -EACCES;
 }

 ent = autofs_hash_lookup(dh, &dentry->d_name);
 if (!ent) {
  unlock_kernel();
  return -ENOENT;
 }

 if ((unsigned int)ent->ino < AUTOFS_FIRST_DIR_INO) {
  unlock_kernel();
  return -ENOTDIR;
 }

 if (ent->dentry != dentry) {
  printk("autofs_rmdir: odentry != dentry for entry %s\n", dentry->d_name.name);
 }

 dentry->d_time = (unsigned long)(struct autofs_dir_ent *)((void*)0);
 autofs_hash_delete(ent);
 drop_nlink(dir);
 d_drop(dentry);
 unlock_kernel();

 return 0;
}
