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
struct posix_acl {int a_count; } ;
struct nfs4_acl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs4_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NFS4_ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*,struct nfs4_acl*,unsigned int) ; 
 struct nfs4_acl* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct posix_acl*) ; 

struct nfs4_acl *
FUNC4(struct posix_acl *pacl, struct posix_acl *dpacl,
			unsigned int flags)
{
	struct nfs4_acl *acl;
	int size = 0;

	if (pacl) {
		if (FUNC3(pacl) < 0)
			return FUNC0(-EINVAL);
		size += 2*pacl->a_count;
	}
	if (dpacl) {
		if (FUNC3(dpacl) < 0)
			return FUNC0(-EINVAL);
		size += 2*dpacl->a_count;
	}

	/* Allocate for worst case: one (deny, allow) pair each: */
	acl = FUNC2(size);
	if (acl == NULL)
		return FUNC0(-ENOMEM);

	if (pacl)
		FUNC1(pacl, acl, flags & ~NFS4_ACL_TYPE_DEFAULT);

	if (dpacl)
		FUNC1(dpacl, acl, flags | NFS4_ACL_TYPE_DEFAULT);

	return acl;
}