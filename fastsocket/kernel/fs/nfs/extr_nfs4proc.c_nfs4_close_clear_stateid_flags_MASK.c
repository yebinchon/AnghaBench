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
struct nfs4_state {TYPE_1__* owner; int /*<<< orphan*/  flags; } ;
typedef  int fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  so_lock; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFS_O_RDONLY_STATE ; 
 int /*<<< orphan*/  NFS_O_RDWR_STATE ; 
 int /*<<< orphan*/  NFS_O_WRONLY_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfs4_state *state,
		fmode_t fmode)
{
	FUNC1(&state->owner->so_lock);
	if (!(fmode & FMODE_READ))
		FUNC0(NFS_O_RDONLY_STATE, &state->flags);
	if (!(fmode & FMODE_WRITE))
		FUNC0(NFS_O_WRONLY_STATE, &state->flags);
	FUNC0(NFS_O_RDWR_STATE, &state->flags);
	FUNC2(&state->owner->so_lock);
}