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
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {scalar_t__ cb_expires; int /*<<< orphan*/  validate_lock; int /*<<< orphan*/  flags; scalar_t__ cb_promised; TYPE_1__ fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_BROKEN ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int /*<<< orphan*/  AFS_VNODE_MODIFIED ; 
 int /*<<< orphan*/  AFS_VNODE_ZAP_DATA ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct afs_vnode*,int /*<<< orphan*/ *,struct key*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC13(struct afs_vnode *vnode, struct key *key)
{
	int ret;

	FUNC1("{v={%x:%u} fl=%lx},%x",
	       vnode->fid.vid, vnode->fid.vnode, vnode->flags,
	       FUNC7(key));

	if (vnode->cb_promised &&
	    !FUNC12(AFS_VNODE_CB_BROKEN, &vnode->flags) &&
	    !FUNC12(AFS_VNODE_MODIFIED, &vnode->flags) &&
	    !FUNC12(AFS_VNODE_ZAP_DATA, &vnode->flags)) {
		if (vnode->cb_expires < FUNC6() + 10) {
			FUNC0("callback expired");
			FUNC10(AFS_VNODE_CB_BROKEN, &vnode->flags);
		} else {
			goto valid;
		}
	}

	if (FUNC12(AFS_VNODE_DELETED, &vnode->flags))
		goto valid;

	FUNC8(&vnode->validate_lock);

	/* if the promise has expired, we need to check the server again to get
	 * a new promise - note that if the (parent) directory's metadata was
	 * changed then the security may be different and we may no longer have
	 * access */
	if (!vnode->cb_promised ||
	    FUNC12(AFS_VNODE_CB_BROKEN, &vnode->flags)) {
		FUNC0("not promised");
		ret = FUNC3(vnode, NULL, key);
		if (ret < 0)
			goto error_unlock;
		FUNC0("new promise [fl=%lx]", vnode->flags);
	}

	if (FUNC12(AFS_VNODE_DELETED, &vnode->flags)) {
		FUNC0("file already deleted");
		ret = -ESTALE;
		goto error_unlock;
	}

	/* if the vnode's data version number changed then its contents are
	 * different */
	if (FUNC11(AFS_VNODE_ZAP_DATA, &vnode->flags))
		FUNC4(vnode);

	FUNC5(AFS_VNODE_MODIFIED, &vnode->flags);
	FUNC9(&vnode->validate_lock);
valid:
	FUNC2(" = 0");
	return 0;

error_unlock:
	FUNC9(&vnode->validate_lock);
	FUNC2(" = %d", ret);
	return ret;
}