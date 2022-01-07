
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;


 int vfat_revalidate_shortname (struct dentry*) ;

__attribute__((used)) static int vfat_revalidate(struct dentry *dentry, struct nameidata *nd)
{

 if (dentry->d_inode)
  return 1;
 return vfat_revalidate_shortname(dentry);
}
