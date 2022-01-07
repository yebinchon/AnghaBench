
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int flags; } ;
struct dentry {scalar_t__ d_inode; } ;


 int LOOKUP_CONTINUE ;
 int LOOKUP_CREATE ;
 int LOOKUP_PARENT ;
 int LOOKUP_RENAME_TARGET ;
 int vfat_revalidate_shortname (struct dentry*) ;

__attribute__((used)) static int vfat_revalidate_ci(struct dentry *dentry, struct nameidata *nd)
{
 if (dentry->d_inode)
  return 1;





 if (!nd)
  return 0;






 if (!(nd->flags & (LOOKUP_CONTINUE | LOOKUP_PARENT))) {
  if (nd->flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
   return 0;
 }

 return vfat_revalidate_shortname(dentry);
}
