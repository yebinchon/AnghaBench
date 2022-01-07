
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {scalar_t__ num_exe_file_vmas; struct file* exe_file; } ;
struct file {int dummy; } ;


 int fput (struct file*) ;
 int get_file (struct file*) ;

void set_mm_exe_file(struct mm_struct *mm, struct file *new_exe_file)
{
 if (new_exe_file)
  get_file(new_exe_file);
 if (mm->exe_file)
  fput(mm->exe_file);
 mm->exe_file = new_exe_file;
 mm->num_exe_file_vmas = 0;
}
