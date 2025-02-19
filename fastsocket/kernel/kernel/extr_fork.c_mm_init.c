
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {int flags; unsigned long cached_hole_size; scalar_t__ def_flags; int oom_disable_count; int free_area_cache; int page_table_lock; scalar_t__ nr_ptes; int * core_state; int mmlist; int mmap_sem; int mm_count; int mm_users; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int flags; } ;


 int INIT_LIST_HEAD (int *) ;
 int MMF_INIT_MASK ;
 int TASK_UNMAPPED_BASE ;
 int anon_rss ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int default_dump_filter ;
 int file_rss ;
 int free_mm (struct mm_struct*) ;
 int init_rwsem (int *) ;
 scalar_t__ likely (int) ;
 int mm_alloc_pgd (struct mm_struct*) ;
 int mm_init_aio (struct mm_struct*) ;
 int mm_init_owner (struct mm_struct*,struct task_struct*) ;
 int mmu_notifier_mm_init (struct mm_struct*) ;
 int set_mm_counter (struct mm_struct*,int ,int ) ;
 int spin_lock_init (int *) ;
 int swap_usage ;

__attribute__((used)) static struct mm_struct * mm_init(struct mm_struct * mm, struct task_struct *p)
{
 atomic_set(&mm->mm_users, 1);
 atomic_set(&mm->mm_count, 1);
 init_rwsem(&mm->mmap_sem);
 INIT_LIST_HEAD(&mm->mmlist);
 mm->flags = (current->mm) ?
  (current->mm->flags & MMF_INIT_MASK) : default_dump_filter;
 mm->core_state = ((void*)0);
 mm->nr_ptes = 0;
 set_mm_counter(mm, file_rss, 0);
 set_mm_counter(mm, anon_rss, 0);
 set_mm_counter(mm, swap_usage, 0);
 spin_lock_init(&mm->page_table_lock);
 mm->free_area_cache = TASK_UNMAPPED_BASE;
 mm->cached_hole_size = ~0UL;
 mm_init_aio(mm);
 mm_init_owner(mm, p);
 atomic_set(&mm->oom_disable_count, 0);

 if (likely(!mm_alloc_pgd(mm))) {
  mm->def_flags = 0;
  mmu_notifier_mm_init(mm);
  return mm;
 }

 free_mm(mm);
 return ((void*)0);
}
