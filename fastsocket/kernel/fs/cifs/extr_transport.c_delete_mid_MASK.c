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
struct mid_q_entry {int /*<<< orphan*/  qhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mid_q_entry *mid)
{
	FUNC2(&GlobalMid_Lock);
	FUNC1(&mid->qhead);
	FUNC3(&GlobalMid_Lock);

	FUNC0(mid);
}