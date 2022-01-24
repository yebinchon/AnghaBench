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
struct nfsd4_read {scalar_t__ rd_offset; int /*<<< orphan*/ * rd_fhp; struct svc_rqst* rd_rqstp; int /*<<< orphan*/ * rd_filp; int /*<<< orphan*/  rd_stateid; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ OFFSET_MAX ; 
 int /*<<< orphan*/  RD_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_inval ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	   struct nfsd4_read *read)
{
	__be32 status;

	/* no need to check permission - this will be done in nfsd_read() */

	read->rd_filp = NULL;
	if (read->rd_offset >= OFFSET_MAX)
		return nfserr_inval;

	FUNC2();
	/* check stateid */
	if ((status = FUNC3(cstate, &read->rd_stateid,
						 RD_STATE, &read->rd_filp))) {
		FUNC0("NFSD: nfsd4_read: couldn't process stateid!\n");
		goto out;
	}
	if (read->rd_filp)
		FUNC1(read->rd_filp);
	status = nfs_ok;
out:
	FUNC4();
	read->rd_rqstp = rqstp;
	read->rd_fhp = &cstate->current_fh;
	return status;
}