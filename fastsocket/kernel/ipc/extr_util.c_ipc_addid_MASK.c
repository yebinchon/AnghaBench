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
typedef  int /*<<< orphan*/  uid_t ;
struct kern_ipc_perm {int /*<<< orphan*/  seq; int /*<<< orphan*/  id; int /*<<< orphan*/  cgid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; int /*<<< orphan*/  lock; scalar_t__ deleted; } ;
struct ipc_ids {int in_use; scalar_t__ seq; scalar_t__ seq_max; int /*<<< orphan*/  ipcs_idr; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int ENOSPC ; 
 int IPCMNI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kern_ipc_perm*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ipc_ids* ids, struct kern_ipc_perm* new, int size)
{
	uid_t euid;
	gid_t egid;
	int id, err;

	if (size > IPCMNI)
		size = IPCMNI;

	if (ids->in_use >= size)
		return -ENOSPC;

	FUNC6(&new->lock);
	new->deleted = 0;
	FUNC3();
	FUNC5(&new->lock);

	err = FUNC1(&ids->ipcs_idr, new, &id);
	if (err) {
		FUNC7(&new->lock);
		FUNC4();
		return err;
	}

	ids->in_use++;

	FUNC0(&euid, &egid);
	new->cuid = new->uid = euid;
	new->gid = new->cgid = egid;

	new->seq = ids->seq++;
	if(ids->seq > ids->seq_max)
		ids->seq = 0;

	new->id = FUNC2(id, new->seq);
	return id;
}