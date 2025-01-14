
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int FOLL_FORCE ;
 int FOLL_GET ;
 int FOLL_TOUCH ;
 int FOLL_WRITE ;
 int __get_user_pages (struct task_struct*,struct mm_struct*,unsigned long,int,int,struct page**,struct vm_area_struct**) ;

int get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
  unsigned long start, int nr_pages, int write, int force,
  struct page **pages, struct vm_area_struct **vmas)
{
 int flags = FOLL_TOUCH;

 if (pages)
  flags |= FOLL_GET;
 if (write)
  flags |= FOLL_WRITE;
 if (force)
  flags |= FOLL_FORCE;

 return __get_user_pages(tsk, mm, start, nr_pages, flags, pages, vmas);
}
