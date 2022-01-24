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
struct task_struct {int dummy; } ;
struct mm_struct {scalar_t__* saved_auxv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,int) ; 
 struct mm_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *task, char *buffer)
{
	struct mm_struct *mm = FUNC3(task);
	int res = FUNC1(mm);
	if (mm && !FUNC0(mm)) {
		unsigned int nwords = 0;
		do {
			nwords += 2;
		} while (mm->saved_auxv[nwords - 2] != 0); /* AT_NULL */
		res = nwords * sizeof(mm->saved_auxv[0]);
		if (res > PAGE_SIZE)
			res = PAGE_SIZE;
		FUNC2(buffer, mm->saved_auxv, res);
		FUNC4(mm);
	}
	return res;
}