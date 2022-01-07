
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {scalar_t__ i_data; } ;


 TYPE_1__* SYSV_I (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *sysv_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 nd_set_link(nd, (char *)SYSV_I(dentry->d_inode)->i_data);
 return ((void*)0);
}
