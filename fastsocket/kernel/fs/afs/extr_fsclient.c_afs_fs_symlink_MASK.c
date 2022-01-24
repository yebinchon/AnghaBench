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
struct afs_file_status {int dummy; } ;
struct afs_fid {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_file_status* reply3; struct afs_fid* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 size_t AFS_SET_MODE ; 
 int ENOMEM ; 
 size_t FSSYMLINK ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSSymlink ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (char const*) ; 

int FUNC8(struct afs_server *server,
		   struct key *key,
		   struct afs_vnode *vnode,
		   const char *name,
		   const char *contents,
		   struct afs_fid *newfid,
		   struct afs_file_status *newstatus,
		   const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	size_t namesz, reqsz, padsz, c_namesz, c_padsz;
	__be32 *bp;

	FUNC0("");

	namesz = FUNC7(name);
	padsz = (4 - (namesz & 3)) & 3;

	c_namesz = FUNC7(contents);
	c_padsz = (4 - (c_namesz & 3)) & 3;

	reqsz = (6 * 4) + namesz + padsz + c_namesz + c_padsz + (6 * 4);

	call = FUNC1(&afs_RXFSSymlink, reqsz,
				   (3 + 21 + 21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->reply2 = newfid;
	call->reply3 = newstatus;
	call->service_id = FS_SERVICE;
	call->port = FUNC4(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(FSSYMLINK);
	*bp++ = FUNC3(vnode->fid.vid);
	*bp++ = FUNC3(vnode->fid.vnode);
	*bp++ = FUNC3(vnode->fid.unique);
	*bp++ = FUNC3(namesz);
	FUNC5(bp, name, namesz);
	bp = (void *) bp + namesz;
	if (padsz > 0) {
		FUNC6(bp, 0, padsz);
		bp = (void *) bp + padsz;
	}
	*bp++ = FUNC3(c_namesz);
	FUNC5(bp, contents, c_namesz);
	bp = (void *) bp + c_namesz;
	if (c_padsz > 0) {
		FUNC6(bp, 0, c_padsz);
		bp = (void *) bp + c_padsz;
	}
	*bp++ = FUNC3(AFS_SET_MODE);
	*bp++ = 0; /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = FUNC3(S_IRWXUGO); /* unix mode */
	*bp++ = 0; /* segment size */

	return FUNC2(&server->addr, call, GFP_NOFS, wait_mode);
}