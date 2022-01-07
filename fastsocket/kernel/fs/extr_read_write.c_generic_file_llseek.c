
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mutex; } ;


 int generic_file_llseek_unlocked (struct file*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

loff_t generic_file_llseek(struct file *file, loff_t offset, int origin)
{
 loff_t rval;

 mutex_lock(&file->f_dentry->d_inode->i_mutex);
 rval = generic_file_llseek_unlocked(file, offset, origin);
 mutex_unlock(&file->f_dentry->d_inode->i_mutex);

 return rval;
}
