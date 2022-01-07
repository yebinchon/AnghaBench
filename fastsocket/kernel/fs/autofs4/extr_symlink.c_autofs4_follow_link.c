
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ symlink; } ;
struct autofs_info {TYPE_1__ u; } ;


 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *autofs4_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 nd_set_link(nd, (char *)ino->u.symlink);
 return ((void*)0);
}
