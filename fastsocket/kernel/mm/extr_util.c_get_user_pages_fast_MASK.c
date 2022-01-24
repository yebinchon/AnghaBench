#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,struct mm_struct*,unsigned long,int,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int __attribute__((weak)) FUNC3(unsigned long start,
				int nr_pages, int write, struct page **pages)
{
	struct mm_struct *mm = current->mm;
	int ret;

	FUNC0(&mm->mmap_sem);
	ret = FUNC1(current, mm, start, nr_pages,
					write, 0, pages, NULL);
	FUNC2(&mm->mmap_sem);

	return ret;
}