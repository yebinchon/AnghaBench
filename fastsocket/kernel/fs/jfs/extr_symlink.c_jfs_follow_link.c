
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {char* i_inline; } ;


 TYPE_1__* JFS_IP (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *jfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 char *s = JFS_IP(dentry->d_inode)->i_inline;
 nd_set_link(nd, s);
 return ((void*)0);
}
