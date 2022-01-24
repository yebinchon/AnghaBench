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
struct o2quo_state {int /*<<< orphan*/  qs_work; int /*<<< orphan*/  qs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2quo_make_decision ; 
 struct o2quo_state o2quo_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	struct o2quo_state *qs = &o2quo_state;

	FUNC1(&qs->qs_lock);
	FUNC0(&qs->qs_work, o2quo_make_decision);
}