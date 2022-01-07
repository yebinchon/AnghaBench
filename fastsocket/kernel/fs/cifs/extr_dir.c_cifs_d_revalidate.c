
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int flags; } ;
struct dentry {int d_flags; scalar_t__ d_time; int d_lock; scalar_t__ d_inode; } ;


 int DCACHE_NEED_AUTOMOUNT ;
 scalar_t__ HZ ;
 scalar_t__ IS_AUTOMOUNT (scalar_t__) ;
 int LOOKUP_CONTINUE ;
 int LOOKUP_CREATE ;
 int LOOKUP_PARENT ;
 int LOOKUP_RENAME_TARGET ;
 scalar_t__ cifs_revalidate_dentry (struct dentry*) ;
 int jiffies ;
 int lookupCacheEnabled ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static int
cifs_d_revalidate(struct dentry *direntry, struct nameidata *nd)
{
 if (direntry->d_inode) {
  if (cifs_revalidate_dentry(direntry))
   return 0;
  else {







   if (IS_AUTOMOUNT(direntry->d_inode) &&
      !(direntry->d_flags & DCACHE_NEED_AUTOMOUNT)) {
    spin_lock(&direntry->d_lock);
    direntry->d_flags |= DCACHE_NEED_AUTOMOUNT;
    spin_unlock(&direntry->d_lock);
   }

   return 1;
  }
 }





 if (!nd)
  return 0;






 if (!(nd->flags & (LOOKUP_CONTINUE | LOOKUP_PARENT))) {
  if (nd->flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
   return 0;
 }

 if (time_after(jiffies, direntry->d_time + HZ) || !lookupCacheEnabled)
  return 0;

 return 1;
}
