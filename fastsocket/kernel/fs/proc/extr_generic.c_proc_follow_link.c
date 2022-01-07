
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* PDE (int ) ;
 int nd_set_link (struct nameidata*,int ) ;

__attribute__((used)) static void *proc_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 nd_set_link(nd, PDE(dentry->d_inode)->data);
 return ((void*)0);
}
