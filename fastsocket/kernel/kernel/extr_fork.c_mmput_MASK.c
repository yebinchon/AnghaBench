#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {TYPE_1__* binfmt; int /*<<< orphan*/  mmlist; int /*<<< orphan*/  mm_users; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  mmlist_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct mm_struct *mm)
{
	FUNC7();

	if (FUNC0(&mm->mm_users)) {
		FUNC1(mm);
		FUNC4(mm);
		FUNC3(mm); /* must run before exit_mmap */
		FUNC2(mm);
		FUNC11(mm, NULL);
		if (!FUNC6(&mm->mmlist)) {
			FUNC12(&mmlist_lock);
			FUNC5(&mm->mmlist);
			FUNC13(&mmlist_lock);
		}
		FUNC10(mm);
		if (mm->binfmt)
			FUNC9(mm->binfmt->module);
		FUNC8(mm);
	}
}