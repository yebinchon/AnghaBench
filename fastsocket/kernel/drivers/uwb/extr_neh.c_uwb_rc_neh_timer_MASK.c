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
struct uwb_rc_neh {scalar_t__ context; struct uwb_rc* rc; } ;
struct uwb_rc {int /*<<< orphan*/  neh_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc_neh*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct uwb_rc_neh *neh = (struct uwb_rc_neh *)arg;
	struct uwb_rc *rc = neh->rc;
	unsigned long flags;

	FUNC1(&rc->neh_lock, flags);
	if (neh->context)
		FUNC0(rc, neh);
	else
		neh = NULL;
	FUNC2(&rc->neh_lock, flags);

	if (neh)
		FUNC3(neh, NULL, -ETIMEDOUT);
}