
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;
struct autofs_info {int expiring; int active; } ;


 int DPRINTK (char*,struct dentry*) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int autofs4_free_ino (struct autofs_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void autofs4_dentry_release(struct dentry *de)
{
 struct autofs_info *inf;

 DPRINTK("releasing %p", de);

 inf = autofs4_dentry_ino(de);
 if (inf) {
  struct autofs_sb_info *sbi = autofs4_sbi(de->d_sb);
  if (sbi) {
   spin_lock(&sbi->lookup_lock);
   if (!list_empty(&inf->active))
    list_del(&inf->active);
   if (!list_empty(&inf->expiring))
    list_del(&inf->expiring);
   spin_unlock(&sbi->lookup_lock);
  }
  autofs4_free_ino(inf);
 }
}
