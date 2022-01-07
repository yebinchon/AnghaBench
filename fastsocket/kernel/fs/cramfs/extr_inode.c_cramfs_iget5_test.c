
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct cramfs_inode {int dummy; } ;


 int CRAMINO (struct cramfs_inode*) ;

__attribute__((used)) static int cramfs_iget5_test(struct inode *inode, void *opaque)
{
 struct cramfs_inode *cramfs_inode = opaque;
 return inode->i_ino == CRAMINO(cramfs_inode) && inode->i_ino != 1;
}
