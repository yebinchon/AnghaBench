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
struct rb_node {int dummy; } ;
struct sched_entity {struct rb_node run_node; } ;
struct cfs_rq {int /*<<< orphan*/  tasks_timeline; struct rb_node* rb_leftmost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 

__attribute__((used)) static void FUNC2(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	if (cfs_rq->rb_leftmost == &se->run_node) {
		struct rb_node *next_node;

		next_node = FUNC1(&se->run_node);
		cfs_rq->rb_leftmost = next_node;
	}

	FUNC0(&se->run_node, &cfs_rq->tasks_timeline);
}