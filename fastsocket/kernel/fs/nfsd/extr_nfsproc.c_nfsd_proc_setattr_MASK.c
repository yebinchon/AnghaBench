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
typedef  int /*<<< orphan*/  time_t ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {scalar_t__ ia_size; int /*<<< orphan*/  ia_valid; } ;
struct nfsd_sattrargs {TYPE_1__ attrs; int /*<<< orphan*/  fh; } ;
struct nfsd_attrstat {int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfsd_attrstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd_sattrargs *argp,
					  struct nfsd_attrstat  *resp)
{
	__be32 nfserr;
	FUNC1("nfsd: SETATTR  %s, valid=%x, size=%ld\n",
		FUNC0(&argp->fh),
		argp->attrs.ia_valid, (long) argp->attrs.ia_size);

	FUNC2(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh, &argp->attrs,0, (time_t)0);
	return FUNC3(nfserr, resp);
}