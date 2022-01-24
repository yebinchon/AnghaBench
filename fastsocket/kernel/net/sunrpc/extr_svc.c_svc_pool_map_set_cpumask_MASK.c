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
struct svc_pool_map {unsigned int* pool_to; scalar_t__ count; int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SVC_POOL_PERCPU 129 
#define  SVC_POOL_PERNODE 128 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct svc_pool_map svc_pool_map ; 

__attribute__((used)) static inline void
FUNC4(struct task_struct *task, unsigned int pidx)
{
	struct svc_pool_map *m = &svc_pool_map;
	unsigned int node = m->pool_to[pidx];

	/*
	 * The caller checks for sv_nrpools > 1, which
	 * implies that we've been initialized.
	 */
	FUNC0(m->count == 0);

	switch (m->mode) {
	case SVC_POOL_PERCPU:
	{
		FUNC3(task, FUNC1(node));
		break;
	}
	case SVC_POOL_PERNODE:
	{
		FUNC3(task, FUNC2(node));
		break;
	}
	}
}