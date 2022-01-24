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
struct nfs4_state {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_STATE_RECOVERY_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfs4_state *state, int error)
{
	FUNC1(NFS_STATE_RECOVERY_FAILED, &state->flags);
	FUNC0(state);
}