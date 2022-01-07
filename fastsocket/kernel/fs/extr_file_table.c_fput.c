
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_count; } ;


 int __fput (struct file*) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;

void fput(struct file *file)
{
 if (atomic_long_dec_and_test(&file->f_count))
  __fput(file);
}
