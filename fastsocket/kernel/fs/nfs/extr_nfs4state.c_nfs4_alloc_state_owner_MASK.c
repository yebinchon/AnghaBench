#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
struct TYPE_3__ {TYPE_2__* sequence; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_lru; int /*<<< orphan*/  so_delegreturn_mutex; int /*<<< orphan*/  so_reclaim_seqcount; int /*<<< orphan*/  so_count; TYPE_2__ so_sequence; TYPE_1__ so_seqid; int /*<<< orphan*/  so_states; int /*<<< orphan*/  so_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct nfs4_state_owner* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_state_owner *
FUNC7(void)
{
	struct nfs4_state_owner *sp;

	sp = FUNC2(sizeof(*sp),GFP_NOFS);
	if (!sp)
		return NULL;
	FUNC6(&sp->so_lock);
	FUNC0(&sp->so_states);
	FUNC4(&sp->so_sequence.wait, "Seqid_waitqueue");
	sp->so_seqid.sequence = &sp->so_sequence;
	FUNC6(&sp->so_sequence.lock);
	FUNC0(&sp->so_sequence.list);
	FUNC1(&sp->so_count, 1);
	FUNC5(&sp->so_reclaim_seqcount);
	FUNC3(&sp->so_delegreturn_mutex);
	FUNC0(&sp->so_lru);
	return sp;
}