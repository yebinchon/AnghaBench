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
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 size_t FSLINK ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSLink ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (char const*) ; 

int FUNC8(struct afs_server *server,
		struct key *key,
		struct afs_vnode *dvnode,
		struct afs_vnode *vnode,
		const char *name,
		const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	size_t namesz, reqsz, padsz;
	__be32 *bp;

	FUNC0("");

	namesz = FUNC7(name);
	padsz = (4 - (namesz & 3)) & 3;
	reqsz = (5 * 4) + namesz + padsz + (3 * 4);

	call = FUNC1(&afs_RXFSLink, reqsz, (21 + 21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = dvnode;
	call->reply2 = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC4(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(FSLINK);
	*bp++ = FUNC3(dvnode->fid.vid);
	*bp++ = FUNC3(dvnode->fid.vnode);
	*bp++ = FUNC3(dvnode->fid.unique);
	*bp++ = FUNC3(namesz);
	FUNC5(bp, name, namesz);
	bp = (void *) bp + namesz;
	if (padsz > 0) {
		FUNC6(bp, 0, padsz);
		bp = (void *) bp + padsz;
	}
	*bp++ = FUNC3(vnode->fid.vid);
	*bp++ = FUNC3(vnode->fid.vnode);
	*bp++ = FUNC3(vnode->fid.unique);

	return FUNC2(&server->addr, call, GFP_NOFS, wait_mode);
}