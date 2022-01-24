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
struct uwb_rsv {scalar_t__ state; int /*<<< orphan*/  pal_node; struct uwb_dbg* pal_priv; } ;
struct uwb_dbg {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 scalar_t__ UWB_RSV_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct uwb_rsv*) ; 

__attribute__((used)) static void FUNC5(struct uwb_rsv *rsv)
{
	struct uwb_dbg *dbg = rsv->pal_priv;

	FUNC4("debug", rsv);

	if (rsv->state == UWB_RSV_STATE_NONE) {
		FUNC1(&dbg->list_lock);
		FUNC0(&rsv->pal_node);
		FUNC2(&dbg->list_lock);
		FUNC3(rsv);
	}
}