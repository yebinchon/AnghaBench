#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct rpc_clnt {int dummy; } ;
struct gss_upcall_msg {struct gss_auth* auth; int /*<<< orphan*/  uid; int /*<<< orphan*/  count; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  rpc_waitqueue; int /*<<< orphan*/  list; int /*<<< orphan*/  inode; } ;
struct gss_auth {TYPE_1__** dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct gss_upcall_msg* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gss_upcall_msg*,struct rpc_clnt*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gss_upcall_msg*) ; 
 struct gss_upcall_msg* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static inline struct gss_upcall_msg *
FUNC10(struct gss_auth *gss_auth, uid_t uid, struct rpc_clnt *clnt,
		int machine_cred)
{
	struct gss_upcall_msg *gss_msg;
	int vers;

	gss_msg = FUNC8(sizeof(*gss_msg), GFP_NOFS);
	if (gss_msg == NULL)
		return FUNC0(-ENOMEM);
	vers = FUNC4();
	if (vers < 0) {
		FUNC7(gss_msg);
		return FUNC0(vers);
	}
	gss_msg->inode = FUNC2(gss_auth->dentry[vers]->d_inode);
	FUNC1(&gss_msg->list);
	FUNC9(&gss_msg->rpc_waitqueue, "RPCSEC_GSS upcall waitq");
	FUNC6(&gss_msg->waitqueue);
	FUNC3(&gss_msg->count, 1);
	gss_msg->uid = uid;
	gss_msg->auth = gss_auth;
	FUNC5(gss_msg, clnt, machine_cred);
	return gss_msg;
}