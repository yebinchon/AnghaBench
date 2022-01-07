
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;


 int __vfs_follow_link (struct nameidata*,char const*) ;

int vfs_follow_link(struct nameidata *nd, const char *link)
{
 return __vfs_follow_link(nd, link);
}
