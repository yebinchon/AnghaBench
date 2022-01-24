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
struct writeback_control {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  writepage; } ;

/* Variables and functions */
 int /*<<< orphan*/  __writepage ; 
 int FUNC0 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct address_space*) ; 

int FUNC1(struct address_space *mapping,
		       struct writeback_control *wbc)
{
	/* deal with chardevs and other special file */
	if (!mapping->a_ops->writepage)
		return 0;

	return FUNC0(mapping, wbc, __writepage, mapping);
}