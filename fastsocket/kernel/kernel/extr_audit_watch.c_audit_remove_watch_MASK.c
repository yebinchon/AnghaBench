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
struct audit_watch {TYPE_1__* parent; int /*<<< orphan*/  wlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  wdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct audit_watch *watch)
{
	FUNC1(&watch->wlist);
	FUNC2(&watch->parent->wdata);
	watch->parent = NULL;
	FUNC0(watch); /* match initial get */
}