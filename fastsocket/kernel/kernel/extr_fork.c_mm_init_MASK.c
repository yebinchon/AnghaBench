#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct mm_struct {int flags; unsigned long cached_hole_size; scalar_t__ def_flags; int /*<<< orphan*/  oom_disable_count; int /*<<< orphan*/  free_area_cache; int /*<<< orphan*/  page_table_lock; scalar_t__ nr_ptes; int /*<<< orphan*/ * core_state; int /*<<< orphan*/  mmlist; int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  mm_count; int /*<<< orphan*/  mm_users; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MMF_INIT_MASK ; 
 int /*<<< orphan*/  TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int default_dump_filter ; 
 int /*<<< orphan*/  file_rss ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_usage ; 

__attribute__((used)) static struct mm_struct * FUNC11(struct mm_struct * mm, struct task_struct *p)
{
	FUNC1(&mm->mm_users, 1);
	FUNC1(&mm->mm_count, 1);
	FUNC3(&mm->mmap_sem);
	FUNC0(&mm->mmlist);
	mm->flags = (current->mm) ?
		(current->mm->flags & MMF_INIT_MASK) : default_dump_filter;
	mm->core_state = NULL;
	mm->nr_ptes = 0;
	FUNC9(mm, file_rss, 0);
	FUNC9(mm, anon_rss, 0);
	FUNC9(mm, swap_usage, 0);
	FUNC10(&mm->page_table_lock);
	mm->free_area_cache = TASK_UNMAPPED_BASE;
	mm->cached_hole_size = ~0UL;
	FUNC6(mm);
	FUNC7(mm, p);
	FUNC1(&mm->oom_disable_count, 0);

	if (FUNC4(!FUNC5(mm))) {
		mm->def_flags = 0;
		FUNC8(mm);
		return mm;
	}

	FUNC2(mm);
	return NULL;
}