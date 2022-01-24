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
struct ocfs2_cluster_connection {struct dlm_ctxt* cc_lockspace; struct o2dlm_private* cc_private; } ;
struct o2dlm_private {int /*<<< orphan*/  op_eviction_cb; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct o2dlm_private*) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_cluster_connection *conn)
{
	struct dlm_ctxt *dlm = conn->cc_lockspace;
	struct o2dlm_private *priv = conn->cc_private;

	FUNC1(&priv->op_eviction_cb);
	conn->cc_private = NULL;
	FUNC2(priv);

	FUNC0(dlm);
	conn->cc_lockspace = NULL;

	return 0;
}