#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_cluster_connection {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* disconnect ) (struct ocfs2_cluster_connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* active_stack ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_cluster_connection*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct ocfs2_cluster_connection*) ; 

int FUNC4(struct ocfs2_cluster_connection *conn,
			     int hangup_pending)
{
	int ret;

	FUNC0(conn == NULL);

	ret = active_stack->sp_ops->disconnect(conn);

	/* XXX Should we free it anyway? */
	if (!ret) {
		FUNC1(conn);
		if (!hangup_pending)
			FUNC2();
	}

	return ret;
}