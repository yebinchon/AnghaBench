
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext4_ext_check (struct inode*,int ,int ) ;
 int ext_depth (struct inode*) ;
 int ext_inode_hdr (struct inode*) ;

int ext4_ext_check_inode(struct inode *inode)
{
 return ext4_ext_check(inode, ext_inode_hdr(inode), ext_depth(inode));
}
