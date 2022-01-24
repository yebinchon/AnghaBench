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
struct rpc_sequence {int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
struct nfs_seqid {int /*<<< orphan*/  list; TYPE_1__* sequence; } ;
struct TYPE_2__ {struct rpc_sequence* sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nfs_seqid *seqid)
{
	if (!FUNC1(&seqid->list)) {
		struct rpc_sequence *sequence = seqid->sequence->sequence;

		FUNC3(&sequence->lock);
		FUNC0(&seqid->list);
		FUNC4(&sequence->lock);
		FUNC2(&sequence->wait);
	}
}