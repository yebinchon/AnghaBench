
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int i_size; } ;


 int PAGE_SIZE ;
 int configfs_file_operations ;

__attribute__((used)) static int configfs_init_file(struct inode * inode)
{
 inode->i_size = PAGE_SIZE;
 inode->i_fop = &configfs_file_operations;
 return 0;
}
