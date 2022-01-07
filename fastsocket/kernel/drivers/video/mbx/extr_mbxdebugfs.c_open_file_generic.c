
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int generic_ip; } ;
struct inode {TYPE_1__ u; } ;
struct file {int private_data; } ;



__attribute__((used)) static int open_file_generic(struct inode *inode, struct file *file)
{
 file->private_data = inode->u.generic_ip;
 return 0;
}
