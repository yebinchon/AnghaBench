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
struct mm_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_DUMPABLE ; 
 int /*<<< orphan*/  MMF_DUMP_SECURELY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct mm_struct *mm, int value)
{
	switch (value) {
	case 0:
		FUNC0(MMF_DUMPABLE, &mm->flags);
		FUNC2();
		FUNC0(MMF_DUMP_SECURELY, &mm->flags);
		break;
	case 1:
		FUNC1(MMF_DUMPABLE, &mm->flags);
		FUNC2();
		FUNC0(MMF_DUMP_SECURELY, &mm->flags);
		break;
	case 2:
		FUNC1(MMF_DUMP_SECURELY, &mm->flags);
		FUNC2();
		FUNC1(MMF_DUMPABLE, &mm->flags);
		break;
	}
}