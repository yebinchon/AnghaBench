
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int down_read (int *) ;
 int get_user_pages (TYPE_1__*,struct mm_struct*,unsigned long,int,int,int ,struct page**,int *) ;
 int up_read (int *) ;

int __attribute__((weak)) get_user_pages_fast(unsigned long start,
    int nr_pages, int write, struct page **pages)
{
 struct mm_struct *mm = current->mm;
 int ret;

 down_read(&mm->mmap_sem);
 ret = get_user_pages(current, mm, start, nr_pages,
     write, 0, pages, ((void*)0));
 up_read(&mm->mmap_sem);

 return ret;
}
