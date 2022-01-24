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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  pv_minor; int /*<<< orphan*/  pv_major; } ;
struct ocfs2_cluster_connection {struct o2dlm_private* cc_private; struct dlm_ctxt* cc_lockspace; TYPE_1__ cc_version; int /*<<< orphan*/  cc_name; int /*<<< orphan*/  cc_namelen; } ;
struct o2dlm_private {int /*<<< orphan*/  op_eviction_cb; } ;
struct dlm_protocol_version {int /*<<< orphan*/  pv_minor; int /*<<< orphan*/  pv_major; } ;
struct dlm_ctxt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sp_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dlm_ctxt*) ; 
 int FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dlm_ctxt* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_protocol_version*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_cluster_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct o2dlm_private*) ; 
 struct o2dlm_private* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_2__ o2cb_stack ; 
 int /*<<< orphan*/  o2dlm_eviction_cb ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct ocfs2_cluster_connection *conn)
{
	int rc = 0;
	u32 dlm_key;
	struct dlm_ctxt *dlm;
	struct o2dlm_private *priv;
	struct dlm_protocol_version dlm_version;

	FUNC0(conn == NULL);
	FUNC0(o2cb_stack.sp_proto == NULL);

	/* for now we only have one cluster/node, make sure we see it
	 * in the heartbeat universe */
	if (!FUNC10()) {
		rc = -EINVAL;
		goto out;
	}

	priv = FUNC8(sizeof(struct o2dlm_private), GFP_KERNEL);
	if (!priv) {
		rc = -ENOMEM;
		goto out_free;
	}

	/* This just fills the structure in.  It is safe to pass conn. */
	FUNC6(&priv->op_eviction_cb, o2dlm_eviction_cb,
			      conn);

	conn->cc_private = priv;

	/* used by the dlm code to make message headers unique, each
	 * node in this domain must agree on this. */
	dlm_key = FUNC3(0, conn->cc_name, conn->cc_namelen);
	dlm_version.pv_major = conn->cc_version.pv_major;
	dlm_version.pv_minor = conn->cc_version.pv_minor;

	dlm = FUNC4(conn->cc_name, dlm_key, &dlm_version);
	if (FUNC1(dlm)) {
		rc = FUNC2(dlm);
		FUNC9(rc);
		goto out_free;
	}

	conn->cc_version.pv_major = dlm_version.pv_major;
	conn->cc_version.pv_minor = dlm_version.pv_minor;
	conn->cc_lockspace = dlm;

	FUNC5(dlm, &priv->op_eviction_cb);

out_free:
	if (rc && conn->cc_private)
		FUNC7(conn->cc_private);

out:
	return rc;
}