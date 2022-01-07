
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void configfs_put_link(struct dentry *dentry, struct nameidata *nd,
         void *cookie)
{
 if (cookie) {
  unsigned long page = (unsigned long)cookie;
  free_page(page);
 }
}
