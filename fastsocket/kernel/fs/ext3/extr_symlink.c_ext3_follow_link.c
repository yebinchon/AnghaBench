
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct ext3_inode_info {scalar_t__ i_data; } ;
struct dentry {int d_inode; } ;


 struct ext3_inode_info* EXT3_I (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void * ext3_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct ext3_inode_info *ei = EXT3_I(dentry->d_inode);
 nd_set_link(nd, (char*)ei->i_data);
 return ((void*)0);
}
