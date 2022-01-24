#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int /*<<< orphan*/  fh; } ;
struct TYPE_7__ {int /*<<< orphan*/  fh_dentry; TYPE_2__* fh_export; } ;
struct nfsd3_attrstat {int /*<<< orphan*/  stat; TYPE_3__ fh; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; } ;
struct TYPE_6__ {TYPE_1__ ex_path; } ;

/* Variables and functions */
 int NFSD_MAY_BYPASS_GSS_ON_ROOT ; 
 int NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nfsd_fhandle  *argp,
					   struct nfsd3_attrstat *resp)
{
	int	err;
	__be32	nfserr;

	FUNC2("nfsd: GETATTR(3)  %s\n",
		FUNC1(&argp->fh));

	FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh, 0,
			NFSD_MAY_NOP | NFSD_MAY_BYPASS_GSS_ON_ROOT);
	if (nfserr)
		FUNC0(nfserr);

	err = FUNC6(resp->fh.fh_export->ex_path.mnt,
			  resp->fh.fh_dentry, &resp->stat);
	nfserr = FUNC5(err);

	FUNC0(nfserr);
}