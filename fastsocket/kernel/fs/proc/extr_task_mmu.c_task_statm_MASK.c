#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mm_struct {int start_code; int total_vm; int shared_vm; int /*<<< orphan*/  end_code; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  file_rss ; 
 int FUNC1 (struct mm_struct*,int /*<<< orphan*/ ) ; 

int FUNC2(struct mm_struct *mm, int *shared, int *text,
	       int *data, int *resident)
{
	*shared = FUNC1(mm, file_rss);
	*text = (FUNC0(mm->end_code) - (mm->start_code & PAGE_MASK))
								>> PAGE_SHIFT;
	*data = mm->total_vm - mm->shared_vm;
	*resident = *shared + FUNC1(mm, anon_rss);
	return mm->total_vm;
}