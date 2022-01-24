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
struct kern_ipc_perm {int /*<<< orphan*/  lock; scalar_t__ deleted; } ;
struct ipc_ids {int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct kern_ipc_perm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct kern_ipc_perm* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct kern_ipc_perm *FUNC7(struct ipc_ids *ids, int id)
{
	struct kern_ipc_perm *out;
	int lid = FUNC2(id);

	FUNC3();
	out = FUNC1(&ids->ipcs_idr, lid);
	if (out == NULL) {
		FUNC4();
		return FUNC0(-EINVAL);
	}

	FUNC5(&out->lock);
	
	/* ipc_rmid() may have already freed the ID while ipc_lock
	 * was spinning: here verify that the structure is still valid
	 */
	if (out->deleted) {
		FUNC6(&out->lock);
		FUNC4();
		return FUNC0(-EINVAL);
	}

	return out;
}