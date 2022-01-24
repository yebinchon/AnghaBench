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
struct kern_ipc_perm {scalar_t__ key; } ;
struct ipc_ids {int in_use; int /*<<< orphan*/  ipcs_idr; } ;
typedef  scalar_t__ key_t ;

/* Variables and functions */
 struct kern_ipc_perm* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kern_ipc_perm*) ; 

__attribute__((used)) static struct kern_ipc_perm *FUNC2(struct ipc_ids *ids, key_t key)
{
	struct kern_ipc_perm *ipc;
	int next_id;
	int total;

	for (total = 0, next_id = 0; total < ids->in_use; next_id++) {
		ipc = FUNC0(&ids->ipcs_idr, next_id);

		if (ipc == NULL)
			continue;

		if (ipc->key != key) {
			total++;
			continue;
		}

		FUNC1(ipc);
		return ipc;
	}

	return NULL;
}