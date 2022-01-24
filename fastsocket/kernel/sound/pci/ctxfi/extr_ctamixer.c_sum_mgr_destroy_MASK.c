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
struct sum_mgr {int /*<<< orphan*/  mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sum_mgr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sum_mgr *sum_mgr)
{
	FUNC1(&sum_mgr->mgr);
	FUNC0(sum_mgr);
	return 0;
}