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
struct kallsym_iter {scalar_t__ pos; int /*<<< orphan*/  nameoff; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kallsym_iter*) ; 
 int FUNC1 (struct kallsym_iter*) ; 
 scalar_t__ kallsyms_num_syms ; 
 int /*<<< orphan*/  FUNC2 (struct kallsym_iter*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct kallsym_iter *iter, loff_t pos)
{
	/* Module symbols can be accessed randomly. */
	if (pos >= kallsyms_num_syms) {
		iter->pos = pos;
		return FUNC1(iter);
	}

	/* If we're not on the desired position, reset to new position. */
	if (pos != iter->pos)
		FUNC2(iter, pos);

	iter->nameoff += FUNC0(iter);
	iter->pos++;

	return 1;
}