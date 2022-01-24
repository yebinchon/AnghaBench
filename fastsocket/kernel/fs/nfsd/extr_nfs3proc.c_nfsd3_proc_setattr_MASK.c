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
struct svc_rqst {int dummy; } ;
struct nfsd3_sattrargs {int /*<<< orphan*/  guardtime; int /*<<< orphan*/  check_guard; int /*<<< orphan*/  attrs; int /*<<< orphan*/  fh; } ;
struct nfsd3_attrstat {int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd3_sattrargs *argp,
					   struct nfsd3_attrstat  *resp)
{
	__be32	nfserr;

	FUNC2("nfsd: SETATTR(3)  %s\n",
				FUNC1(&argp->fh));

	FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh, &argp->attrs,
			      argp->check_guard, argp->guardtime);
	FUNC0(nfserr);
}