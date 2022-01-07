
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_3__ {int name; } ;
struct dentry {unsigned long d_time; int d_flags; TYPE_1__ d_name; struct inode* d_inode; } ;
struct autofs_sb_info {int dirhash; } ;
struct autofs_dir_ent {int ino; } ;


 unsigned long AUTOFS_NEGATIVE_TIMEOUT ;
 int DCACHE_AUTOFS_PENDING ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 struct autofs_dir_ent* autofs_hash_lookup (int *,TYPE_1__*) ;
 struct inode* autofs_iget (struct super_block*,int ) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 int autofs_update_usage (int *,struct autofs_dir_ent*) ;
 int autofs_wait (struct autofs_sb_info*,TYPE_1__*) ;
 int d_mountpoint (struct dentry*) ;
 unsigned long jiffies ;
 int printk (char*,int,int ) ;

__attribute__((used)) static int try_to_fill_dentry(struct dentry *dentry, struct super_block *sb, struct autofs_sb_info *sbi)
{
 struct inode * inode;
 struct autofs_dir_ent *ent;
 int status = 0;

 if (!(ent = autofs_hash_lookup(&sbi->dirhash, &dentry->d_name))) {
  do {
   if (status && dentry->d_inode) {
    if (status != -ENOENT)
     printk("autofs warning: lookup failure on positive dentry, status = %d, name = %s\n", status, dentry->d_name.name);
    return 0;
   }


   if (status == -ENOENT) {
    dentry->d_time = jiffies + AUTOFS_NEGATIVE_TIMEOUT;
    dentry->d_flags &= ~DCACHE_AUTOFS_PENDING;
    return 1;
   } else if (status) {

    return 1;
   }
   status = autofs_wait(sbi, &dentry->d_name);
  } while (!(ent = autofs_hash_lookup(&sbi->dirhash, &dentry->d_name)));
 }



 dentry->d_time = (unsigned long) ent;

 if (!dentry->d_inode) {
  inode = autofs_iget(sb, ent->ino);
  if (IS_ERR(inode)) {

   return 1;
  }
  dentry->d_inode = inode;
 }



 if (S_ISDIR(dentry->d_inode->i_mode) && !d_mountpoint(dentry)) {
  return !autofs_wait(sbi, &dentry->d_name);
 }



 if (!autofs_oz_mode(sbi)) {
  autofs_update_usage(&sbi->dirhash,ent);
 }

 dentry->d_flags &= ~DCACHE_AUTOFS_PENDING;
 return 1;
}
