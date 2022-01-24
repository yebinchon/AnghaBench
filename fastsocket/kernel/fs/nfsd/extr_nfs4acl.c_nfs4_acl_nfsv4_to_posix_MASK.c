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
struct posix_acl_state {int dummy; } ;
struct posix_acl {int dummy; } ;
struct nfs4_acl {int naces; struct nfs4_ace* aces; } ;
struct nfs4_ace {scalar_t__ type; int flag; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 scalar_t__ NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ; 
 scalar_t__ NFS4_ACE_ACCESS_DENIED_ACE_TYPE ; 
 int NFS4_ACE_INHERIT_ONLY_ACE ; 
 unsigned int NFS4_ACL_DIR ; 
 unsigned int NFS4_ACL_TYPE_DEFAULT ; 
 int NFS4_INHERITANCE_FLAGS ; 
 int NFS4_SUPPORTED_FLAGS ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl_state*) ; 
 int FUNC3 (struct posix_acl_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct posix_acl*) ; 
 struct posix_acl* FUNC5 (struct posix_acl_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl_state*,struct nfs4_ace*) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 

int FUNC8(struct nfs4_acl *acl, struct posix_acl **pacl,
			    struct posix_acl **dpacl, unsigned int flags)
{
	struct posix_acl_state effective_acl_state, default_acl_state;
	struct nfs4_ace *ace;
	int ret;

	ret = FUNC3(&effective_acl_state, acl->naces);
	if (ret)
		return ret;
	ret = FUNC3(&default_acl_state, acl->naces);
	if (ret)
		goto out_estate;
	ret = -EINVAL;
	for (ace = acl->aces; ace < acl->aces + acl->naces; ace++) {
		if (ace->type != NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE &&
		    ace->type != NFS4_ACE_ACCESS_DENIED_ACE_TYPE)
			goto out_dstate;
		if (ace->flag & ~NFS4_SUPPORTED_FLAGS)
			goto out_dstate;
		if ((ace->flag & NFS4_INHERITANCE_FLAGS) == 0) {
			FUNC6(&effective_acl_state, ace);
			continue;
		}
		if (!(flags & NFS4_ACL_DIR))
			goto out_dstate;
		/*
		 * Note that when only one of FILE_INHERIT or DIRECTORY_INHERIT
		 * is set, we're effectively turning on the other.  That's OK,
		 * according to rfc 3530.
		 */
		FUNC6(&default_acl_state, ace);

		if (!(ace->flag & NFS4_ACE_INHERIT_ONLY_ACE))
			FUNC6(&effective_acl_state, ace);
	}
	*pacl = FUNC5(&effective_acl_state, flags);
	if (FUNC0(*pacl)) {
		ret = FUNC1(*pacl);
		*pacl = NULL;
		goto out_dstate;
	}
	*dpacl = FUNC5(&default_acl_state,
						flags | NFS4_ACL_TYPE_DEFAULT);
	if (FUNC0(*dpacl)) {
		ret = FUNC1(*dpacl);
		*dpacl = NULL;
		FUNC4(*pacl);
		*pacl = NULL;
		goto out_dstate;
	}
	FUNC7(*pacl);
	FUNC7(*dpacl);
	ret = 0;
out_dstate:
	FUNC2(&default_acl_state);
out_estate:
	FUNC2(&effective_acl_state);
	return ret;
}