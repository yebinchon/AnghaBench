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
struct svc_rqst {int /*<<< orphan*/  rq_resused; int /*<<< orphan*/ * rq_respages; } ;
struct nfsd_readdirargs {scalar_t__ count; int /*<<< orphan*/  buffer; void* cookie; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd_readdirargs *args)
{
	if (!(p = FUNC0(p, &args->fh)))
		return 0;
	args->cookie = FUNC1(*p++);
	args->count  = FUNC1(*p++);
	if (args->count > PAGE_SIZE)
		args->count = PAGE_SIZE;

	args->buffer = FUNC2(rqstp->rq_respages[rqstp->rq_resused++]);

	return FUNC3(rqstp, p);
}