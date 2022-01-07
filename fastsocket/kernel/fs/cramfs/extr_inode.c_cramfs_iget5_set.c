
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct cramfs_inode {int dummy; } ;


 int CRAMINO (struct cramfs_inode*) ;

__attribute__((used)) static int cramfs_iget5_set(struct inode *inode, void *opaque)
{
 struct cramfs_inode *cramfs_inode = opaque;
 inode->i_ino = CRAMINO(cramfs_inode);
 return 0;
}
