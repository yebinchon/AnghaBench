
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long total_vm; } ;


 unsigned long PAGE_SIZE ;

unsigned long task_vsize(struct mm_struct *mm)
{
 return PAGE_SIZE * mm->total_vm;
}
