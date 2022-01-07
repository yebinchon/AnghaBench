
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * a_ops; } ;
struct inode {TYPE_1__ i_data; int * i_fop; } ;


 int fuse_file_aops ;
 int fuse_file_operations ;

void fuse_init_file_inode(struct inode *inode)
{
 inode->i_fop = &fuse_file_operations;
 inode->i_data.a_ops = &fuse_file_aops;
}
