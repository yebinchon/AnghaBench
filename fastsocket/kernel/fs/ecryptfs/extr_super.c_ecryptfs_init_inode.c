
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; int i_version; int i_ino; } ;
struct TYPE_2__ {int * a_ops; } ;


 int ecryptfs_aops ;
 int ecryptfs_main_fops ;
 int ecryptfs_main_iops ;
 int ecryptfs_set_inode_lower (struct inode*,struct inode*) ;

void ecryptfs_init_inode(struct inode *inode, struct inode *lower_inode)
{
 ecryptfs_set_inode_lower(inode, lower_inode);
 inode->i_ino = lower_inode->i_ino;
 inode->i_version++;
 inode->i_op = &ecryptfs_main_iops;
 inode->i_fop = &ecryptfs_main_fops;
 inode->i_mapping->a_ops = &ecryptfs_aops;
}
