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
struct netfs_trans_dst {int /*<<< orphan*/  trans_entry; struct netfs_trans* trans; } ;
struct netfs_trans {int /*<<< orphan*/  dst_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netfs_trans_dst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct netfs_trans_dst *dst)
{
	struct netfs_trans *t = dst->trans;

	FUNC2(&t->dst_lock);
	FUNC0(&dst->trans_entry);
	FUNC3(&t->dst_lock);

	FUNC1(dst);
}