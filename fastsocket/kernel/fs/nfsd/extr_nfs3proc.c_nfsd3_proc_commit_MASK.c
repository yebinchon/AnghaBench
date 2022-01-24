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
struct nfsd3_commitres {int /*<<< orphan*/  fh; } ;
struct nfsd3_commitargs {scalar_t__ offset; int /*<<< orphan*/  count; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS_OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_inval ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst * rqstp, struct nfsd3_commitargs *argp,
					   struct nfsd3_commitres  *resp)
{
	__be32	nfserr;

	FUNC2("nfsd: COMMIT(3)   %s %u@%Lu\n",
				FUNC1(&argp->fh),
				argp->count,
				(unsigned long long) argp->offset);

	if (argp->offset > NFS_OFFSET_MAX)
		FUNC0(nfserr_inval);

	FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh, argp->offset, argp->count);

	FUNC0(nfserr);
}