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
struct svc_serv {int /*<<< orphan*/  sv_max_mesg; int /*<<< orphan*/  sv_xdrsize; int /*<<< orphan*/  sv_nrthreads; } ;
struct svc_rqst {void* rq_resp; void* rq_argp; struct svc_pool* rq_pool; struct svc_serv* rq_server; int /*<<< orphan*/  rq_all; int /*<<< orphan*/  rq_wait; } ;
struct svc_pool {int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_all_threads; int /*<<< orphan*/  sp_nrthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct svc_rqst* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_rqst* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rqst*,int /*<<< orphan*/ ) ; 

struct svc_rqst *
FUNC9(struct svc_serv *serv, struct svc_pool *pool)
{
	struct svc_rqst	*rqstp;

	rqstp = FUNC3(sizeof(*rqstp), GFP_KERNEL);
	if (!rqstp)
		goto out_enomem;

	FUNC1(&rqstp->rq_wait);

	serv->sv_nrthreads++;
	FUNC5(&pool->sp_lock);
	pool->sp_nrthreads++;
	FUNC4(&rqstp->rq_all, &pool->sp_all_threads);
	FUNC6(&pool->sp_lock);
	rqstp->rq_server = serv;
	rqstp->rq_pool = pool;

	rqstp->rq_argp = FUNC2(serv->sv_xdrsize, GFP_KERNEL);
	if (!rqstp->rq_argp)
		goto out_thread;

	rqstp->rq_resp = FUNC2(serv->sv_xdrsize, GFP_KERNEL);
	if (!rqstp->rq_resp)
		goto out_thread;

	if (!FUNC8(rqstp, serv->sv_max_mesg))
		goto out_thread;

	return rqstp;
out_thread:
	FUNC7(rqstp);
out_enomem:
	return FUNC0(-ENOMEM);
}