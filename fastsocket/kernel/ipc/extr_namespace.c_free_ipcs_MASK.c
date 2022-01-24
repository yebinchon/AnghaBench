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
typedef  struct kern_ipc_perm kern_ipc_perm ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int in_use; int /*<<< orphan*/  rw_mutex; int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kern_ipc_perm* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ipc_namespace *ns, struct ipc_ids *ids,
	       void (*free)(struct ipc_namespace *, struct kern_ipc_perm *))
{
	struct kern_ipc_perm *perm;
	int next_id;
	int total, in_use;

	FUNC0(&ids->rw_mutex);

	in_use = ids->in_use;

	for (total = 0, next_id = 0; total < in_use; next_id++) {
		perm = FUNC1(&ids->ipcs_idr, next_id);
		if (perm == NULL)
			continue;
		FUNC2(perm);
		free(ns, perm);
		total++;
	}
	FUNC3(&ids->rw_mutex);
}