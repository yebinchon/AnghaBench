
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 char* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int nd_set_link (struct nameidata*,char*) ;
 int sysfs_getlink (struct dentry*,char*) ;

__attribute__((used)) static void *sysfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 int error = -ENOMEM;
 unsigned long page = get_zeroed_page(GFP_KERNEL);
 if (page) {
  error = sysfs_getlink(dentry, (char *) page);
  if (error < 0)
   free_page((unsigned long)page);
 }
 nd_set_link(nd, error ? ERR_PTR(error) : (char *)page);
 return ((void*)0);
}
