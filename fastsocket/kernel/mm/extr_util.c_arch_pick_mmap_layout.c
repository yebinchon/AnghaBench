
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int unmap_area; int get_unmapped_area; int mmap_base; } ;


 int TASK_UNMAPPED_BASE ;
 int arch_get_unmapped_area ;
 int arch_unmap_area ;

void arch_pick_mmap_layout(struct mm_struct *mm)
{
 mm->mmap_base = TASK_UNMAPPED_BASE;
 mm->get_unmapped_area = arch_get_unmapped_area;
 mm->unmap_area = arch_unmap_area;
}
