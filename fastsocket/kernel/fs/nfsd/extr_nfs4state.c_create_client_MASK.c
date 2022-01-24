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
struct xdr_netobj {int dummy; } ;
struct svc_rqst {int /*<<< orphan*/  rq_cred; int /*<<< orphan*/  rq_flavor; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_work; } ;
struct nfs4_client {int /*<<< orphan*/ * cl_cb_session; int /*<<< orphan*/  cl_cred; int /*<<< orphan*/  cl_flavor; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cb_waitq; int /*<<< orphan*/  cl_cb_slot_busy; int /*<<< orphan*/  cl_time; TYPE_1__ cl_cb_null; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_lru; int /*<<< orphan*/  cl_delegations; int /*<<< orphan*/  cl_openowners; int /*<<< orphan*/  cl_strhash; int /*<<< orphan*/  cl_idhash; int /*<<< orphan*/  cl_cb_set; int /*<<< orphan*/  cl_refcount; int /*<<< orphan*/  cl_recdir; int /*<<< orphan*/ * cl_principal; int /*<<< orphan*/  cl_sessions; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HEXDIR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfs4_client* FUNC2 (struct xdr_netobj) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd4_do_callback_rpc ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC15 (struct svc_rqst*) ; 
 char* FUNC16 (struct svc_rqst*) ; 

__attribute__((used)) static struct nfs4_client *FUNC17(struct xdr_netobj name, char *recdir,
		struct svc_rqst *rqstp, nfs4_verifier *verf)
{
	struct nfs4_client *clp;
	struct sockaddr *sa = FUNC15(rqstp);
	char *princ;

	clp = FUNC2(name);
	if (clp == NULL)
		return NULL;

	FUNC0(&clp->cl_sessions);

	princ = FUNC16(rqstp);
	if (princ) {
		clp->cl_principal = FUNC10(princ, GFP_KERNEL);
		if (clp->cl_principal == NULL) {
			FUNC7(clp);
			return NULL;
		}
	}

	FUNC11(clp->cl_recdir, recdir, HEXDIR_LEN);
	FUNC3(&clp->cl_refcount, 0);
	FUNC3(&clp->cl_cb_set, 0);
	FUNC0(&clp->cl_idhash);
	FUNC0(&clp->cl_strhash);
	FUNC0(&clp->cl_openowners);
	FUNC0(&clp->cl_delegations);
	FUNC0(&clp->cl_lru);
	FUNC14(&clp->cl_lock);
	FUNC1(&clp->cl_cb_null.cb_work, nfsd4_do_callback_rpc);
	clp->cl_time = FUNC9();
	FUNC4(0, &clp->cl_cb_slot_busy);
	FUNC13(&clp->cl_cb_waitq, "Backchannel slot table");
	FUNC6(clp, verf);
	FUNC12((struct sockaddr *) &clp->cl_addr, sa);
	clp->cl_flavor = rqstp->rq_flavor;
	FUNC5(&clp->cl_cred, &rqstp->rq_cred);
	FUNC8(clp);
	clp->cl_cb_session = NULL;
	return clp;
}