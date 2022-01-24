#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int page_len; TYPE_1__* tail; } ;
struct svc_rqst {TYPE_2__ rq_res; } ;
struct nfsd3_readres {scalar_t__ status; int count; int eof; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {int iov_len; scalar_t__* iov_base; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct svc_rqst*,scalar_t__*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct svc_rqst*,scalar_t__*) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_readres *resp)
{
	p = FUNC0(rqstp, p, &resp->fh);
	if (resp->status == 0) {
		*p++ = FUNC1(resp->count);
		*p++ = FUNC1(resp->eof);
		*p++ = FUNC1(resp->count);	/* xdr opaque count */
		FUNC2(rqstp, p);
		/* now update rqstp->rq_res to reflect data aswell */
		rqstp->rq_res.page_len = resp->count;
		if (resp->count & 3) {
			/* need to pad the tail */
			rqstp->rq_res.tail[0].iov_base = p;
			*p = 0;
			rqstp->rq_res.tail[0].iov_len = 4 - (resp->count & 3);
		}
		return 1;
	} else
		return FUNC2(rqstp, p);
}