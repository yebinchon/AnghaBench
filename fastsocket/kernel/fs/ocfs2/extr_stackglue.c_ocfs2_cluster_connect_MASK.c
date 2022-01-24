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
struct ocfs2_cluster_connection {int cc_namelen; void (* cc_recovery_handler ) (int,void*) ;int /*<<< orphan*/  cc_version; void* cc_recovery_data; int /*<<< orphan*/  cc_name; } ;
struct TYPE_6__ {TYPE_1__* sp_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  lp_max_version; } ;
struct TYPE_4__ {int (* connect ) (struct ocfs2_cluster_connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GROUP_NAME_MAX ; 
 TYPE_3__* active_stack ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_cluster_connection*) ; 
 struct ocfs2_cluster_connection* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* lproto ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct ocfs2_cluster_connection*) ; 

int FUNC7(const char *stack_name,
			  const char *group,
			  int grouplen,
			  void (*recovery_handler)(int node_num,
						   void *recovery_data),
			  void *recovery_data,
			  struct ocfs2_cluster_connection **conn)
{
	int rc = 0;
	struct ocfs2_cluster_connection *new_conn;

	FUNC0(group == NULL);
	FUNC0(conn == NULL);
	FUNC0(recovery_handler == NULL);

	if (grouplen > GROUP_NAME_MAX) {
		rc = -EINVAL;
		goto out;
	}

	new_conn = FUNC2(sizeof(struct ocfs2_cluster_connection),
			   GFP_KERNEL);
	if (!new_conn) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC3(new_conn->cc_name, group, grouplen);
	new_conn->cc_namelen = grouplen;
	new_conn->cc_recovery_handler = recovery_handler;
	new_conn->cc_recovery_data = recovery_data;

	/* Start the new connection at our maximum compatibility level */
	new_conn->cc_version = lproto->lp_max_version;

	/* This will pin the stack driver if successful */
	rc = FUNC4(stack_name);
	if (rc)
		goto out_free;

	rc = active_stack->sp_ops->connect(new_conn);
	if (rc) {
		FUNC5();
		goto out_free;
	}

	*conn = new_conn;

out_free:
	if (rc)
		FUNC1(new_conn);

out:
	return rc;
}