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
struct svc_rqst {int /*<<< orphan*/  rq_vec; } ;
struct nfsd3_writeres {unsigned long count; scalar_t__ committed; int /*<<< orphan*/  fh; } ;
struct nfsd3_writeargs {unsigned long len; int /*<<< orphan*/  vlen; scalar_t__ offset; scalar_t__ stable; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,scalar_t__*) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd3_writeargs *argp,
					 struct nfsd3_writeres  *resp)
{
	__be32	nfserr;
	unsigned long cnt = argp->len;

	FUNC2("nfsd: WRITE(3)    %s %d bytes at %ld%s\n",
				FUNC1(&argp->fh),
				argp->len,
				(unsigned long) argp->offset,
				argp->stable? " stable" : "");

	FUNC3(&resp->fh, &argp->fh);
	resp->committed = argp->stable;
	nfserr = FUNC4(rqstp, &resp->fh, NULL,
				   argp->offset,
				   rqstp->rq_vec, argp->vlen,
				   &cnt,
				   &resp->committed);
	resp->count = cnt;
	FUNC0(nfserr);
}