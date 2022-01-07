
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mtime; int i_sb; } ;
struct dentry {int d_lock; TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int dentry; int count; } ;
struct TYPE_2__ {scalar_t__ i_size; } ;


 int CAP_SYS_ADMIN ;
 int CURRENT_TIME ;
 int EACCES ;
 int __d_drop (struct dentry*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int autofs4_add_expiring (struct dentry*) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int capable (int ) ;
 int clear_nlink (TYPE_1__*) ;
 int dcache_lock ;
 int dput (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs4_dir_unlink(struct inode *dir, struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dir->i_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 struct autofs_info *p_ino;


 if (!autofs4_oz_mode(sbi) && !capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (atomic_dec_and_test(&ino->count)) {
  p_ino = autofs4_dentry_ino(dentry->d_parent);
  if (p_ino && dentry->d_parent != dentry)
   atomic_dec(&p_ino->count);
 }
 dput(ino->dentry);

 dentry->d_inode->i_size = 0;
 clear_nlink(dentry->d_inode);

 dir->i_mtime = CURRENT_TIME;

 spin_lock(&dcache_lock);
 autofs4_add_expiring(dentry);
 spin_lock(&dentry->d_lock);
 __d_drop(dentry);
 spin_unlock(&dentry->d_lock);
 spin_unlock(&dcache_lock);

 return 0;
}
