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
struct ocfs2_cluster_connection {int /*<<< orphan*/ * cc_private; int /*<<< orphan*/ * cc_lockspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_cluster_connection *conn)
{
	FUNC0(conn->cc_lockspace, 2);
	conn->cc_lockspace = NULL;
	FUNC1(conn->cc_private);
	conn->cc_private = NULL;
	return 0;
}