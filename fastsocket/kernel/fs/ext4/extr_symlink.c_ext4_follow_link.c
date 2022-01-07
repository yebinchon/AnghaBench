
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct ext4_inode_info {scalar_t__ i_data; } ;
struct dentry {int d_inode; } ;


 struct ext4_inode_info* EXT4_I (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *ext4_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct ext4_inode_info *ei = EXT4_I(dentry->d_inode);
 nd_set_link(nd, (char *) ei->i_data);
 return ((void*)0);
}
