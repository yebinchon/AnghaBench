#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct svc_fh {scalar_t__ fh_dentry; } ;
struct TYPE_3__ {scalar_t__ fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,TYPE_1__*,char*,int,TYPE_1__*) ; 
 scalar_t__ nfserr_noent ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	      void *arg)
{
	struct svc_fh tmp_fh;
	__be32 ret;

	FUNC1(&tmp_fh, NFS4_FHSIZE);
	ret = FUNC0(rqstp, &tmp_fh);
	if (ret)
		return ret;
	if (tmp_fh.fh_dentry == cstate->current_fh.fh_dentry) {
		FUNC2(&tmp_fh);
		return nfserr_noent;
	}
	FUNC2(&tmp_fh);
	return FUNC3(rqstp, &cstate->current_fh,
			   "..", 2, &cstate->current_fh);
}