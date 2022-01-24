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
struct TYPE_2__ {int ia_valid; } ;
struct nfsd4_setattr {TYPE_1__ sa_iattr; int /*<<< orphan*/ * sa_acl; int /*<<< orphan*/  sa_bmval; int /*<<< orphan*/  sa_stateid; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int /*<<< orphan*/  WR_STATE ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC7 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_attrmask ; 
 scalar_t__ FUNC8 (struct svc_rqst*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC9(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	      struct nfsd4_setattr *setattr)
{
	__be32 status = nfs_ok;

	if (setattr->sa_iattr.ia_valid & ATTR_SIZE) {
		FUNC4();
		status = FUNC5(cstate,
			&setattr->sa_stateid, WR_STATE, NULL);
		FUNC6();
		if (status) {
			FUNC1("NFSD: nfsd4_setattr: couldn't process stateid!\n");
			return status;
		}
	}
	status = FUNC3(&cstate->current_fh);
	if (status)
		return status;
	status = nfs_ok;

	status = FUNC0(rqstp, cstate, setattr->sa_bmval,
				    nfsd_attrmask);
	if (status)
		goto out;

	if (setattr->sa_acl != NULL)
		status = FUNC7(rqstp, &cstate->current_fh,
					    setattr->sa_acl);
	if (status)
		goto out;
	status = FUNC8(rqstp, &cstate->current_fh, &setattr->sa_iattr,
				0, (time_t)0);
out:
	FUNC2(&cstate->current_fh);
	return status;
}