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
struct afs_wait_mode {int dummy; } ;
struct afs_server {size_t cb_break_tail; int /*<<< orphan*/  addr; int /*<<< orphan*/  cb_break_waitq; struct afs_callback* cb_break; int /*<<< orphan*/  cb_break_n; int /*<<< orphan*/  cb_break_head; } ;
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_callback {size_t version; size_t expiry; size_t type; TYPE_1__ fid; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 size_t AFSCBMAX ; 
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int FUNC0 (struct afs_callback*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t,int) ; 
 int ENOMEM ; 
 size_t FSGIVEUPCALLBACKS ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  afs_RXFSGiveUpCallBacks ; 
 struct afs_call* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ *) ; 
 void* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t) ; 

int FUNC12(struct afs_server *server,
			     const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	size_t ncallbacks;
	__be32 *bp, *tp;
	int loop;

	ncallbacks = FUNC2(server->cb_break_head, server->cb_break_tail,
			      FUNC0(server->cb_break));

	FUNC4("{%zu},", ncallbacks);

	if (ncallbacks == 0)
		return 0;
	if (ncallbacks > AFSCBMAX)
		ncallbacks = AFSCBMAX;

	FUNC3("break %zu callbacks", ncallbacks);

	call = FUNC5(&afs_RXFSGiveUpCallBacks,
				   12 + ncallbacks * 6 * 4, 0);
	if (!call)
		return -ENOMEM;

	call->service_id = FS_SERVICE;
	call->port = FUNC9(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	tp = bp + 2 + ncallbacks * 3;
	*bp++ = FUNC8(FSGIVEUPCALLBACKS);
	*bp++ = FUNC8(ncallbacks);
	*tp++ = FUNC8(ncallbacks);

	FUNC7(ncallbacks, &server->cb_break_n);
	for (loop = ncallbacks; loop > 0; loop--) {
		struct afs_callback *cb =
			&server->cb_break[server->cb_break_tail];

		*bp++ = FUNC8(cb->fid.vid);
		*bp++ = FUNC8(cb->fid.vnode);
		*bp++ = FUNC8(cb->fid.unique);
		*tp++ = FUNC8(cb->version);
		*tp++ = FUNC8(cb->expiry);
		*tp++ = FUNC8(cb->type);
		FUNC10();
		server->cb_break_tail =
			(server->cb_break_tail + 1) &
			(FUNC0(server->cb_break) - 1);
	}

	FUNC1(ncallbacks > 0);
	FUNC11(&server->cb_break_waitq, ncallbacks);

	return FUNC6(&server->addr, call, GFP_NOFS, wait_mode);
}