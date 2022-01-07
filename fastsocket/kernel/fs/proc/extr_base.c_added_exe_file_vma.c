
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int num_exe_file_vmas; } ;



void added_exe_file_vma(struct mm_struct *mm)
{
 mm->num_exe_file_vmas++;
}
