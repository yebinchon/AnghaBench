
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;
struct autofs_info {int active; int active_count; } ;


 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void autofs4_del_active(struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 if (ino) {
  spin_lock(&sbi->lookup_lock);
  ino->active_count--;
  if (!ino->active_count) {
   if (!list_empty(&ino->active))
    list_del_init(&ino->active);
  }
  spin_unlock(&sbi->lookup_lock);
 }
 return;
}
