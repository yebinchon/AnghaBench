#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {int anon_access; int caller_access; } ;
struct TYPE_6__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_5__ vfs_inode; TYPE_4__ status; int /*<<< orphan*/  flags; int /*<<< orphan*/  permits; TYPE_3__* volume; TYPE_1__ fid; } ;
struct afs_permits {int count; struct afs_permit* permits; } ;
struct afs_permit {int access_mask; struct key* key; } ;
typedef  int afs_access_t ;
struct TYPE_8__ {TYPE_2__* cell; } ;
struct TYPE_7__ {struct key* anonymous_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_BROKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct afs_vnode*) ; 
 int FUNC2 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct afs_vnode* FUNC7 (struct afs_vnode*,struct key*) ; 
 int FUNC8 (struct afs_vnode*,struct afs_vnode*,struct key*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 struct afs_permits* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct afs_vnode *vnode, struct key *key,
			    afs_access_t *_access)
{
	struct afs_permits *permits;
	struct afs_permit *permit;
	struct afs_vnode *auth_vnode;
	bool valid;
	int loop, ret;

	FUNC5("{%x:%u},%x",
	       vnode->fid.vid, vnode->fid.vnode, FUNC10(key));

	auth_vnode = FUNC7(vnode, key);
	if (FUNC1(auth_vnode)) {
		*_access = 0;
		FUNC6(" = %ld", FUNC2(auth_vnode));
		return FUNC2(auth_vnode);
	}

	FUNC0(FUNC3(auth_vnode->vfs_inode.i_mode));

	/* check the permits to see if we've got one yet */
	if (key == auth_vnode->volume->cell->anonymous_key) {
		FUNC4("anon");
		*_access = auth_vnode->status.anon_access;
		valid = true;
	} else {
		valid = false;
		FUNC12();
		permits = FUNC11(auth_vnode->permits);
		if (permits) {
			permit = permits->permits;
			for (loop = permits->count; loop > 0; loop--) {
				if (permit->key == key) {
					FUNC4("found in cache");
					*_access = permit->access_mask;
					valid = true;
					break;
				}
				permit++;
			}
		}
		FUNC13();
	}

	if (!valid) {
		/* check the status on the file we're actually interested in
		 * (the post-processing will cache the result on auth_vnode) */
		FUNC4("no valid permit");

		FUNC14(AFS_VNODE_CB_BROKEN, &vnode->flags);
		ret = FUNC8(vnode, auth_vnode, key);
		if (ret < 0) {
			FUNC9(&auth_vnode->vfs_inode);
			*_access = 0;
			FUNC6(" = %d", ret);
			return ret;
		}
		*_access = vnode->status.caller_access;
	}

	FUNC9(&auth_vnode->vfs_inode);
	FUNC6(" = 0 [access %x]", *_access);
	return 0;
}