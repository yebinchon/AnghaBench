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
struct nfs_server {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct file_lock {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  NFS_LOCK_NEW ; 
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs4_state*,int /*<<< orphan*/ ,struct file_lock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_server*,struct nfs4_state*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (struct nfs4_state*,struct file_lock*) ; 

int FUNC4(struct file_lock *fl, struct nfs4_state *state, const nfs4_stateid *stateid)
{
	struct nfs_server *server = FUNC0(state->inode);
	int err;

	err = FUNC3(state, fl);
	if (err != 0)
		return err;
	err = FUNC1(state, F_SETLK, fl, NFS_LOCK_NEW);
	return FUNC2(server, state, stateid, err);
}