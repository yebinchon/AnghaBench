
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_private; } ;


 int nd_set_link (struct nameidata*,int ) ;

__attribute__((used)) static void *debugfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 nd_set_link(nd, dentry->d_inode->i_private);
 return ((void*)0);
}
