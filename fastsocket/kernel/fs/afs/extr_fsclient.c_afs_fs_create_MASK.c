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
typedef  size_t umode_t ;
struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_file_status {int dummy; } ;
struct afs_fid {int dummy; } ;
struct afs_callback {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_callback* reply4; struct afs_file_status* reply3; struct afs_fid* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 size_t AFS_SET_MODE ; 
 int ENOMEM ; 
 size_t FSCREATEFILE ; 
 size_t FSMAKEDIR ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t S_IALLUGO ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_RXFSCreateXXXX ; 
 struct afs_call* FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (char const*) ; 

int FUNC9(struct afs_server *server,
		  struct key *key,
		  struct afs_vnode *vnode,
		  const char *name,
		  umode_t mode,
		  struct afs_fid *newfid,
		  struct afs_file_status *newstatus,
		  struct afs_callback *newcb,
		  const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	size_t namesz, reqsz, padsz;
	__be32 *bp;

	FUNC1("");

	namesz = FUNC8(name);
	padsz = (4 - (namesz & 3)) & 3;
	reqsz = (5 * 4) + namesz + padsz + (6 * 4);

	call = FUNC2(&afs_RXFSCreateXXXX, reqsz,
				   (3 + 21 + 21 + 3 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->reply2 = newfid;
	call->reply3 = newstatus;
	call->reply4 = newcb;
	call->service_id = FS_SERVICE;
	call->port = FUNC5(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC4(FUNC0(mode) ? FSMAKEDIR : FSCREATEFILE);
	*bp++ = FUNC4(vnode->fid.vid);
	*bp++ = FUNC4(vnode->fid.vnode);
	*bp++ = FUNC4(vnode->fid.unique);
	*bp++ = FUNC4(namesz);
	FUNC6(bp, name, namesz);
	bp = (void *) bp + namesz;
	if (padsz > 0) {
		FUNC7(bp, 0, padsz);
		bp = (void *) bp + padsz;
	}
	*bp++ = FUNC4(AFS_SET_MODE);
	*bp++ = 0; /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = FUNC4(mode & S_IALLUGO); /* unix mode */
	*bp++ = 0; /* segment size */

	return FUNC3(&server->addr, call, GFP_NOFS, wait_mode);
}