
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * private_data; int f_pos; } ;
typedef int loff_t ;



__attribute__((used)) static loff_t pohmelfs_dir_lseek(struct file *file, loff_t offset, int origin)
{
 file->f_pos = offset;
 file->private_data = ((void*)0);
 return offset;
}
