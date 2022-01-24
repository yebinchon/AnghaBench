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
typedef  int /*<<< orphan*/  u_int16_t ;
struct nfqnl_instance {int peer_pid; int copy_range; int /*<<< orphan*/  hlist; int /*<<< orphan*/  rcu; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  copy_mode; int /*<<< orphan*/  queue_maxlen; int /*<<< orphan*/  queue_num; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct nfqnl_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFQNL_COPY_NONE ; 
 int /*<<< orphan*/  NFQNL_QMAX_DEFAULT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * instance_table ; 
 int /*<<< orphan*/  instances_lock ; 
 int /*<<< orphan*/  FUNC6 (struct nfqnl_instance*) ; 
 struct nfqnl_instance* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfqnl_instance *
FUNC12(u_int16_t queue_num, int pid)
{
	struct nfqnl_instance *inst;
	unsigned int h;
	int err;

	FUNC8(&instances_lock);
	if (FUNC5(queue_num)) {
		err = -EEXIST;
		goto out_unlock;
	}

	inst = FUNC7(sizeof(*inst), GFP_ATOMIC);
	if (!inst) {
		err = -ENOMEM;
		goto out_unlock;
	}

	inst->queue_num = queue_num;
	inst->peer_pid = pid;
	inst->queue_maxlen = NFQNL_QMAX_DEFAULT;
	inst->copy_range = 0xfffff;
	inst->copy_mode = NFQNL_COPY_NONE;
	FUNC9(&inst->lock);
	FUNC1(&inst->queue_list);
	FUNC2(&inst->rcu);

	if (!FUNC11(THIS_MODULE)) {
		err = -EAGAIN;
		goto out_free;
	}

	h = FUNC4(queue_num);
	FUNC3(&inst->hlist, &instance_table[h]);

	FUNC10(&instances_lock);

	return inst;

out_free:
	FUNC6(inst);
out_unlock:
	FUNC10(&instances_lock);
	return FUNC0(err);
}