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
struct nfs4_state {TYPE_1__* owner; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock_states; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_locks; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {int /*<<< orphan*/  so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  LK_STATE_IN_USE ; 
 struct nfs4_lock_state* FUNC0 (struct nfs4_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs4_lock_state* FUNC2 (struct nfs4_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfs4_lock_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_lock_state *FUNC7(struct nfs4_state *state, fl_owner_t owner, pid_t pid, unsigned int type)
{
	struct nfs4_lock_state *lsp, *new = NULL;
	
	for(;;) {
		FUNC5(&state->state_lock);
		lsp = FUNC0(state, owner, pid, type);
		if (lsp != NULL)
			break;
		if (new != NULL) {
			FUNC1(&new->ls_locks, &state->lock_states);
			FUNC4(LK_STATE_IN_USE, &state->flags);
			lsp = new;
			new = NULL;
			break;
		}
		FUNC6(&state->state_lock);
		new = FUNC2(state, owner, pid, type);
		if (new == NULL)
			return NULL;
	}
	FUNC6(&state->state_lock);
	if (new != NULL)
		FUNC3(state->owner->so_server, new);
	return lsp;
}