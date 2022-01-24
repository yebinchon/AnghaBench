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
struct svc_fh {int dummy; } ;
struct nfsd4_open {int /*<<< orphan*/  op_share_access; } ;
struct nfs4_stateid {int dummy; } ;
struct nfs4_file {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfs4_stateid*) ; 
 struct nfs4_stateid* FUNC1 () ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct nfs4_file*,struct svc_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_resource ; 
 int /*<<< orphan*/  stateid_slab ; 

__attribute__((used)) static __be32
FUNC3(struct svc_rqst *rqstp, struct nfs4_stateid **stpp,
		struct nfs4_file *fp, struct svc_fh *cur_fh,
		struct nfsd4_open *open)
{
	struct nfs4_stateid *stp;
	__be32 status;

	stp = FUNC1();
	if (stp == NULL)
		return nfserr_resource;

	status = FUNC2(rqstp, fp, cur_fh, open->op_share_access);
	if (status) {
		FUNC0(stateid_slab, stp);
		return status;
	}
	*stpp = stp;
	return 0;
}