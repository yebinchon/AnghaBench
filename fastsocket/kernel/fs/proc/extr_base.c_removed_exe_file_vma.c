
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {scalar_t__ num_exe_file_vmas; int * exe_file; } ;


 int fput (int *) ;

void removed_exe_file_vma(struct mm_struct *mm)
{
 mm->num_exe_file_vmas--;
 if ((mm->num_exe_file_vmas == 0) && mm->exe_file){
  fput(mm->exe_file);
  mm->exe_file = ((void*)0);
 }

}
