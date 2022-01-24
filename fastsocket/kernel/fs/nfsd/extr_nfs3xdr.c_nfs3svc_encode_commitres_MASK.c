#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd3_commitres {scalar_t__ status; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ nfssvc_boot ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_commitres *resp)
{
	p = FUNC0(rqstp, p, &resp->fh);
	/* Write verifier */
	if (resp->status == 0) {
		*p++ = FUNC1(nfssvc_boot.tv_sec);
		*p++ = FUNC1(nfssvc_boot.tv_usec);
	}
	return FUNC2(rqstp, p);
}