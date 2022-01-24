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
struct netfs_trans_dst {struct netfs_state* state; } ;
struct netfs_state {int /*<<< orphan*/  trans_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct netfs_trans_dst*,struct netfs_state*) ; 

__attribute__((used)) static int FUNC3(struct netfs_trans_dst *dst)
{
	int ret;
	struct netfs_state *st = dst->state;

	FUNC0(&st->trans_lock);
	ret = FUNC2(dst, st);
	FUNC1(&st->trans_lock);

	return ret;
}