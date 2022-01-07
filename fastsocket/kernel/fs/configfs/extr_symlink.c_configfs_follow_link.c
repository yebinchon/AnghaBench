
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 char* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int configfs_getlink (struct dentry*,char*) ;
 unsigned long get_zeroed_page (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *configfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 int error = -ENOMEM;
 unsigned long page = get_zeroed_page(GFP_KERNEL);

 if (page) {
  error = configfs_getlink(dentry, (char *)page);
  if (!error) {
   nd_set_link(nd, (char *)page);
   return (void *)page;
  }
 }

 nd_set_link(nd, ERR_PTR(error));
 return ((void*)0);
}
