
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; } ;


 int ns_file_operations ;

bool proc_ns_inode(struct inode *inode)
{
 return inode->i_fop == &ns_file_operations;
}
