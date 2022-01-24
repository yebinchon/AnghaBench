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
struct uwb_rc_neh {int /*<<< orphan*/  timer; } ;
struct uwb_rc {int /*<<< orphan*/  neh_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc_neh*) ; 

void FUNC5(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
	unsigned long flags;

	FUNC2(&rc->neh_lock, flags);
	FUNC0(rc, neh);
	FUNC3(&rc->neh_lock, flags);

	FUNC1(&neh->timer);
	FUNC4(neh);
}