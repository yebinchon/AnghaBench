#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rate_control_ref {TYPE_3__* ops; TYPE_2__* local; int /*<<< orphan*/  priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/ * rcdir; } ;
struct TYPE_5__ {TYPE_1__ debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rate_control_ref*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rate_control_ref *ctrl_ref)
{
	ctrl_ref->ops->free(ctrl_ref->priv);

#ifdef CONFIG_MAC80211_DEBUGFS
	debugfs_remove_recursive(ctrl_ref->local->debugfs.rcdir);
	ctrl_ref->local->debugfs.rcdir = NULL;
#endif

	FUNC1(ctrl_ref->ops);
	FUNC2(ctrl_ref);
}