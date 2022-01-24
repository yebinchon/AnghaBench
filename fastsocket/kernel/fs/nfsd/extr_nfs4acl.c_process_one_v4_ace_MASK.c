#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  deny; } ;
struct posix_acl_state {TYPE_2__* groups; TYPE_2__* users; TYPE_4__ everyone; TYPE_4__ other; TYPE_4__ group; TYPE_4__ owner; scalar_t__ empty; } ;
struct nfs4_ace {int /*<<< orphan*/  type; int /*<<< orphan*/  who; int /*<<< orphan*/  access_mask; } ;
struct TYPE_8__ {TYPE_1__* aces; } ;
struct TYPE_7__ {TYPE_4__ perms; } ;

/* Variables and functions */
#define  ACL_GROUP 132 
#define  ACL_GROUP_OBJ 131 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ; 
 int FUNC0 (struct nfs4_ace*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct posix_acl_state*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct posix_acl_state *state,
				struct nfs4_ace *ace)
{
	u32 mask = ace->access_mask;
	int i;

	state->empty = 0;

	switch (FUNC0(ace)) {
	case ACL_USER_OBJ:
		if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
			FUNC1(&state->owner, mask);
		} else {
			FUNC3(&state->owner, mask);
		}
		break;
	case ACL_USER:
		i = FUNC5(state, state->users, ace->who);
		if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
			FUNC1(&state->users->aces[i].perms, mask);
		} else {
			FUNC3(&state->users->aces[i].perms, mask);
			mask = state->users->aces[i].perms.deny;
			FUNC3(&state->owner, mask);
		}
		break;
	case ACL_GROUP_OBJ:
		if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
			FUNC1(&state->group, mask);
		} else {
			FUNC3(&state->group, mask);
			mask = state->group.deny;
			FUNC3(&state->owner, mask);
			FUNC3(&state->everyone, mask);
			FUNC4(state->users, mask);
			FUNC4(state->groups, mask);
		}
		break;
	case ACL_GROUP:
		i = FUNC5(state, state->groups, ace->who);
		if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
			FUNC1(&state->groups->aces[i].perms, mask);
		} else {
			FUNC3(&state->groups->aces[i].perms, mask);
			mask = state->groups->aces[i].perms.deny;
			FUNC3(&state->owner, mask);
			FUNC3(&state->group, mask);
			FUNC3(&state->everyone, mask);
			FUNC4(state->users, mask);
			FUNC4(state->groups, mask);
		}
		break;
	case ACL_OTHER:
		if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
			FUNC1(&state->owner, mask);
			FUNC1(&state->group, mask);
			FUNC1(&state->other, mask);
			FUNC1(&state->everyone, mask);
			FUNC2(state->users, mask);
			FUNC2(state->groups, mask);
		} else {
			FUNC3(&state->owner, mask);
			FUNC3(&state->group, mask);
			FUNC3(&state->other, mask);
			FUNC3(&state->everyone, mask);
			FUNC4(state->users, mask);
			FUNC4(state->groups, mask);
		}
	}
}