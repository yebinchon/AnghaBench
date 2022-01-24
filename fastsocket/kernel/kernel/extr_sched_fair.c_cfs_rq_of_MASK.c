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
struct task_struct {int dummy; } ;
struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;
struct rq {struct cfs_rq cfs; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (struct sched_entity*) ; 
 struct rq* FUNC1 (struct task_struct*) ; 

__attribute__((used)) static inline struct cfs_rq *FUNC2(struct sched_entity *se)
{
	struct task_struct *p = FUNC0(se);
	struct rq *rq = FUNC1(p);

	return &rq->cfs;
}