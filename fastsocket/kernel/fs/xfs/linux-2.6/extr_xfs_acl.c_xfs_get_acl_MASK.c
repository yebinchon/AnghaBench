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
struct xfs_inode {int dummy; } ;
struct xfs_acl {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct posix_acl* ACL_NOT_CACHED ; 
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  ATTR_ROOT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOATTR ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct posix_acl* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct posix_acl*) ; 
 unsigned char* SGI_ACL_DEFAULT ; 
 unsigned char* SGI_ACL_FILE ; 
 struct xfs_inode* FUNC3 (struct inode*) ; 
 struct posix_acl* FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_acl*) ; 
 struct xfs_acl* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,struct posix_acl*) ; 
 struct posix_acl* FUNC8 (struct xfs_acl*) ; 
 int FUNC9 (struct xfs_inode*,unsigned char*,unsigned char*,int*,int /*<<< orphan*/ ) ; 

struct posix_acl *
FUNC10(struct inode *inode, int type)
{
	struct xfs_inode *ip = FUNC3(inode);
	struct posix_acl *acl;
	struct xfs_acl *xfs_acl;
	int len = sizeof(struct xfs_acl);
	unsigned char *ea_name;
	int error;

	acl = FUNC4(inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	switch (type) {
	case ACL_TYPE_ACCESS:
		ea_name = SGI_ACL_FILE;
		break;
	case ACL_TYPE_DEFAULT:
		ea_name = SGI_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}

	/*
	 * If we have a cached ACLs value just return it, not need to
	 * go out to the disk.
	 */

	xfs_acl = FUNC6(sizeof(struct xfs_acl), GFP_KERNEL);
	if (!xfs_acl)
		return FUNC1(-ENOMEM);

	error = -FUNC9(ip, ea_name, (unsigned char *)xfs_acl,
							&len, ATTR_ROOT);
	if (error) {
		/*
		 * If the attribute doesn't exist make sure we have a negative
		 * cache entry, for any other error assume it is transient and
		 * leave the cache entry as ACL_NOT_CACHED.
		 */
		if (error == -ENOATTR) {
			acl = NULL;
			goto out_update_cache;
		}
		goto out;
	}

	acl = FUNC8(xfs_acl);
	if (FUNC2(acl))
		goto out;

 out_update_cache:
	FUNC7(inode, type, acl);
 out:
	FUNC5(xfs_acl);
	return acl;
}