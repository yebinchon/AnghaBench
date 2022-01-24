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
struct nfsd3_fsinfores {scalar_t__ status; int /*<<< orphan*/  f_properties; int /*<<< orphan*/  f_maxfilesize; int /*<<< orphan*/  f_dtpref; int /*<<< orphan*/  f_wtmult; int /*<<< orphan*/  f_wtpref; int /*<<< orphan*/  f_wtmax; int /*<<< orphan*/  f_rtmult; int /*<<< orphan*/  f_rtpref; int /*<<< orphan*/  f_rtmax; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdr_one ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 void* xdr_zero ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_fsinfores *resp)
{
	*p++ = xdr_zero;	/* no post_op_attr */

	if (resp->status == 0) {
		*p++ = FUNC0(resp->f_rtmax);
		*p++ = FUNC0(resp->f_rtpref);
		*p++ = FUNC0(resp->f_rtmult);
		*p++ = FUNC0(resp->f_wtmax);
		*p++ = FUNC0(resp->f_wtpref);
		*p++ = FUNC0(resp->f_wtmult);
		*p++ = FUNC0(resp->f_dtpref);
		p = FUNC1(p, resp->f_maxfilesize);
		*p++ = xdr_one;
		*p++ = xdr_zero;
		*p++ = FUNC0(resp->f_properties);
	}

	return FUNC2(rqstp, p);
}