#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  allow; int /*<<< orphan*/  deny; } ;
struct TYPE_14__ {int /*<<< orphan*/  allow; } ;
struct TYPE_16__ {int /*<<< orphan*/  allow; int /*<<< orphan*/  deny; } ;
struct TYPE_9__ {int /*<<< orphan*/  allow; int /*<<< orphan*/  deny; } ;
struct posix_acl_state {TYPE_7__ other; TYPE_6__ mask; TYPE_5__* groups; TYPE_8__ group; TYPE_3__* users; TYPE_1__ owner; scalar_t__ empty; } ;
struct posix_acl_entry {void* e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;
struct TYPE_13__ {int n; TYPE_4__* aces; } ;
struct TYPE_12__ {TYPE_8__ perms; void* uid; } ;
struct TYPE_11__ {int n; TYPE_2__* aces; } ;
struct TYPE_10__ {TYPE_8__ perms; void* uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_GROUP ; 
 int /*<<< orphan*/  ACL_GROUP_OBJ ; 
 int /*<<< orphan*/  ACL_MASK ; 
 int /*<<< orphan*/  ACL_OTHER ; 
 void* ACL_UNDEFINED_ID ; 
 int /*<<< orphan*/  ACL_USER ; 
 int /*<<< orphan*/  ACL_USER_OBJ ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int NFS4_ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl_state*,TYPE_8__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 struct posix_acl* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *
FUNC6(struct posix_acl_state *state, unsigned int flags)
{
	struct posix_acl_entry *pace;
	struct posix_acl *pacl;
	int nace;
	int i, error = 0;

	/*
	 * ACLs with no ACEs are treated differently in the inheritable
	 * and effective cases: when there are no inheritable ACEs, we
	 * set a zero-length default posix acl:
	 */
	if (state->empty && (flags & NFS4_ACL_TYPE_DEFAULT)) {
		pacl = FUNC4(0, GFP_KERNEL);
		return pacl ? pacl : FUNC0(-ENOMEM);
	}
	/*
	 * When there are no effective ACEs, the following will end
	 * up setting a 3-element effective posix ACL with all
	 * permissions zero.
	 */
	nace = 4 + state->users->n + state->groups->n;
	pacl = FUNC4(nace, GFP_KERNEL);
	if (!pacl)
		return FUNC0(-ENOMEM);

	pace = pacl->a_entries;
	pace->e_tag = ACL_USER_OBJ;
	error = FUNC2(state->owner.deny, 1);
	if (error)
		goto out_err;
	FUNC3(state->owner.allow, &pace->e_perm, flags);
	pace->e_id = ACL_UNDEFINED_ID;

	for (i=0; i < state->users->n; i++) {
		pace++;
		pace->e_tag = ACL_USER;
		error = FUNC2(state->users->aces[i].perms.deny, 0);
		if (error)
			goto out_err;
		FUNC3(state->users->aces[i].perms.allow,
					&pace->e_perm, flags);
		pace->e_id = state->users->aces[i].uid;
		FUNC1(state, &state->users->aces[i].perms);
	}

	pace++;
	pace->e_tag = ACL_GROUP_OBJ;
	error = FUNC2(state->group.deny, 0);
	if (error)
		goto out_err;
	FUNC3(state->group.allow, &pace->e_perm, flags);
	pace->e_id = ACL_UNDEFINED_ID;
	FUNC1(state, &state->group);

	for (i=0; i < state->groups->n; i++) {
		pace++;
		pace->e_tag = ACL_GROUP;
		error = FUNC2(state->groups->aces[i].perms.deny, 0);
		if (error)
			goto out_err;
		FUNC3(state->groups->aces[i].perms.allow,
					&pace->e_perm, flags);
		pace->e_id = state->groups->aces[i].uid;
		FUNC1(state, &state->groups->aces[i].perms);
	}

	pace++;
	pace->e_tag = ACL_MASK;
	FUNC3(state->mask.allow, &pace->e_perm, flags);
	pace->e_id = ACL_UNDEFINED_ID;

	pace++;
	pace->e_tag = ACL_OTHER;
	error = FUNC2(state->other.deny, 0);
	if (error)
		goto out_err;
	FUNC3(state->other.allow, &pace->e_perm, flags);
	pace->e_id = ACL_UNDEFINED_ID;

	return pacl;
out_err:
	FUNC5(pacl);
	return FUNC0(error);
}