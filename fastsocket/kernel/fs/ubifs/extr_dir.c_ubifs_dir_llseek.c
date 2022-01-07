
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * private_data; } ;
typedef int loff_t ;


 int generic_file_llseek (struct file*,int ,int) ;
 int kfree (int *) ;

__attribute__((used)) static loff_t ubifs_dir_llseek(struct file *file, loff_t offset, int origin)
{
 kfree(file->private_data);
 file->private_data = ((void*)0);
 return generic_file_llseek(file, offset, origin);
}
