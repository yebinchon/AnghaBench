
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;
typedef int loff_t ;


 int FMODE_READ ;
 int seq_lseek (struct file*,int ,int) ;

__attribute__((used)) static loff_t tracing_seek(struct file *file, loff_t offset, int origin)
{
 if (file->f_mode & FMODE_READ)
  return seq_lseek(file, offset, origin);
 else
  return 0;
}
