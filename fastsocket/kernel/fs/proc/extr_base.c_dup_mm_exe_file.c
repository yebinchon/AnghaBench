
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int exe_file; } ;


 int get_mm_exe_file (struct mm_struct*) ;

void dup_mm_exe_file(struct mm_struct *oldmm, struct mm_struct *newmm)
{


 newmm->exe_file = get_mm_exe_file(oldmm);
}
