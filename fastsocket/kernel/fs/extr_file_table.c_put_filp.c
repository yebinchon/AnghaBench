
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_count; } ;


 scalar_t__ atomic_long_dec_and_test (int *) ;
 int file_free (struct file*) ;
 int file_kill (struct file*) ;
 int security_file_free (struct file*) ;

void put_filp(struct file *file)
{
 if (atomic_long_dec_and_test(&file->f_count)) {
  security_file_free(file);
  file_kill(file);
  file_free(file);
 }
}
