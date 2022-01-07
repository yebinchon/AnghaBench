
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct autofs_symlink {char* data; } ;
struct TYPE_2__ {scalar_t__ i_private; } ;


 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *autofs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 char *s=((struct autofs_symlink *)dentry->d_inode->i_private)->data;
 nd_set_link(nd, s);
 return ((void*)0);
}
