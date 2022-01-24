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
struct netfs_trans_dst {int /*<<< orphan*/  trans_entry; struct netfs_trans* trans; struct netfs_state* state; scalar_t__ send_time; scalar_t__ retries; } ;
struct netfs_trans {int result; int /*<<< orphan*/  dst_lock; int /*<<< orphan*/  dst_list; } ;
struct netfs_state {int /*<<< orphan*/  trans_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct netfs_trans_dst* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netfs_trans_dst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netfs_trans_dst_pool ; 
 int /*<<< orphan*/  FUNC5 (struct netfs_trans*) ; 
 int FUNC6 (struct netfs_trans_dst*,struct netfs_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct netfs_trans*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct netfs_trans *t, struct netfs_state *st)
{
	struct netfs_trans_dst *dst;
	int err;

	dst = FUNC1(netfs_trans_dst_pool, GFP_KERNEL);
	if (!dst)
		return -ENOMEM;

	dst->retries = 0;
	dst->send_time = 0;
	dst->state = st;
	dst->trans = t;
	FUNC5(t);

	FUNC3(&st->trans_lock);
	err = FUNC6(dst, st);
	FUNC4(&st->trans_lock);

	if (err)
		goto err_out_free;

	FUNC8(&t->dst_lock);
	FUNC0(&dst->trans_entry, &t->dst_list);
	FUNC9(&t->dst_lock);

	return 0;

err_out_free:
	t->result = err;
	FUNC7(t);
	FUNC2(dst, netfs_trans_dst_pool);
	return err;
}