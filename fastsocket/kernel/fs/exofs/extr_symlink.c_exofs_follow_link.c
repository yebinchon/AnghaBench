
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct exofs_i_info {scalar_t__ i_data; } ;
struct dentry {int d_inode; } ;


 struct exofs_i_info* exofs_i (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *exofs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct exofs_i_info *oi = exofs_i(dentry->d_inode);

 nd_set_link(nd, (char *)oi->i_data);
 return ((void*)0);
}
