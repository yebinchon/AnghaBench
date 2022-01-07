
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int start_code; int total_vm; int shared_vm; int end_code; } ;


 int PAGE_ALIGN (int ) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int anon_rss ;
 int file_rss ;
 int get_mm_counter (struct mm_struct*,int ) ;

int task_statm(struct mm_struct *mm, int *shared, int *text,
        int *data, int *resident)
{
 *shared = get_mm_counter(mm, file_rss);
 *text = (PAGE_ALIGN(mm->end_code) - (mm->start_code & PAGE_MASK))
        >> PAGE_SHIFT;
 *data = mm->total_vm - mm->shared_vm;
 *resident = *shared + get_mm_counter(mm, anon_rss);
 return mm->total_vm;
}
