#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nfs_lockowner {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_7__ {scalar_t__ seqid; } ;
struct TYPE_8__ {TYPE_1__ stateid; } ;
typedef  TYPE_2__ nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  NFS_CAP_STATEID_NFSV41 ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct nfs4_state*,struct nfs_lockowner const*) ; 
 int FUNC2 (TYPE_2__*,struct nfs4_state*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(nfs4_stateid *dst, struct nfs4_state *state,
		fmode_t fmode, const struct nfs_lockowner *lockowner)
{
	int ret = 0;
	if (FUNC0(dst, state->inode, fmode))
		goto out;
	ret = FUNC1(dst, state, lockowner);
	if (ret != -ENOENT)
		goto out;
	ret = FUNC2(dst, state);
out:
	if (FUNC3(state->inode, NFS_CAP_STATEID_NFSV41))
		dst->stateid.seqid = 0;
	return ret;
}