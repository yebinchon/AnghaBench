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
typedef  int u32 ;
struct svc_rqst {int /*<<< orphan*/ * rq_respages; int /*<<< orphan*/  rq_resused; } ;
struct nfsd3_readdirargs {int count; int /*<<< orphan*/  buffer; void* dircount; int /*<<< orphan*/ * verf; int /*<<< orphan*/  cookie; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct svc_rqst*) ; 
 int FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_readdirargs *args)
{
	int len, pn;
	u32 max_blocksize = FUNC3(rqstp);

	if (!(p = FUNC0(p, &args->fh)))
		return 0;
	p = FUNC5(p, &args->cookie);
	args->verf     = p; p += 2;
	args->dircount = FUNC1(*p++);
	args->count    = FUNC1(*p++);

	len = (args->count > max_blocksize) ? max_blocksize :
						  args->count;
	args->count = len;

	while (len > 0) {
		pn = rqstp->rq_resused++;
		if (!args->buffer)
			args->buffer = FUNC2(rqstp->rq_respages[pn]);
		len -= PAGE_SIZE;
	}

	return FUNC4(rqstp, p);
}