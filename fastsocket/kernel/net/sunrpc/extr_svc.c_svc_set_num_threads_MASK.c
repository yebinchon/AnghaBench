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
struct task_struct {struct task_struct* rq_task; } ;
struct svc_serv {int sv_nrthreads; int sv_nrpools; int /*<<< orphan*/  sv_module; int /*<<< orphan*/  sv_name; int /*<<< orphan*/  sv_function; } ;
struct svc_rqst {struct svc_rqst* rq_task; } ;
struct svc_pool {int /*<<< orphan*/  sp_id; int /*<<< orphan*/  sp_lock; scalar_t__ sp_nrthreads; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct svc_pool* FUNC3 (struct svc_serv*,struct svc_pool*,unsigned int*) ; 
 struct task_struct* FUNC4 (struct svc_serv*,struct svc_pool*,unsigned int*) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC12 (struct svc_serv*,struct svc_pool*) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 

int
FUNC15(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
	struct svc_rqst	*rqstp;
	struct task_struct *task;
	struct svc_pool *chosen_pool;
	int error = 0;
	unsigned int state = serv->sv_nrthreads-1;

	if (pool == NULL) {
		/* The -1 assumes caller has done a svc_get() */
		nrservs -= (serv->sv_nrthreads-1);
	} else {
		FUNC8(&pool->sp_lock);
		nrservs -= pool->sp_nrthreads;
		FUNC9(&pool->sp_lock);
	}

	/* create new threads */
	while (nrservs > 0) {
		nrservs--;
		chosen_pool = FUNC3(serv, pool, &state);

		rqstp = FUNC12(serv, chosen_pool);
		if (FUNC0(rqstp)) {
			error = FUNC1(rqstp);
			break;
		}

		FUNC2(serv->sv_module);
		task = FUNC5(serv->sv_function, rqstp, serv->sv_name);
		if (FUNC0(task)) {
			error = FUNC1(task);
			FUNC6(serv->sv_module);
			FUNC10(rqstp);
			break;
		}

		rqstp->rq_task = task;
		if (serv->sv_nrpools > 1)
			FUNC11(task, chosen_pool->sp_id);

		FUNC13(serv);
		FUNC14(task);
	}
	/* destroy old threads */
	while (nrservs < 0 &&
	       (task = FUNC4(serv, pool, &state)) != NULL) {
		FUNC7(SIGINT, task, 1);
		nrservs++;
	}

	return error;
}