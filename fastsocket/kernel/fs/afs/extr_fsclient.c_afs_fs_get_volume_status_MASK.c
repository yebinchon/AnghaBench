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
struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct afs_volume_status {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; void* reply3; struct afs_volume_status* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFSOPAQUEMAX ; 
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSGETVOLUMESTATUS ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSGetVolumeStatus ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct afs_server *server,
			     struct key *key,
			     struct afs_vnode *vnode,
			     struct afs_volume_status *vs,
			     const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;
	void *tmpbuf;

	FUNC0("");

	tmpbuf = FUNC6(AFSOPAQUEMAX, GFP_KERNEL);
	if (!tmpbuf)
		return -ENOMEM;

	call = FUNC1(&afs_RXFSGetVolumeStatus, 2 * 4, 12 * 4);
	if (!call) {
		FUNC5(tmpbuf);
		return -ENOMEM;
	}

	call->key = key;
	call->reply = vnode;
	call->reply2 = vs;
	call->reply3 = tmpbuf;
	call->service_id = FS_SERVICE;
	call->port = FUNC4(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC3(FSGETVOLUMESTATUS);
	bp[1] = FUNC3(vnode->fid.vid);

	return FUNC2(&server->addr, call, GFP_NOFS, wait_mode);
}