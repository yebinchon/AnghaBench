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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*,struct mm_struct*,unsigned long,void*,int,int) ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 

int FUNC3(struct task_struct *tsk, unsigned long addr,
		void *buf, int len, int write)
{
	struct mm_struct *mm;
	int ret;

	mm = FUNC1(tsk);
	if (!mm)
		return 0;

	ret = FUNC0(tsk, mm, addr, buf, len, write);
	FUNC2(mm);

	return ret;
}