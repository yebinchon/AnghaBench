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
struct svc_rqst {int /*<<< orphan*/  rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd4_setclientid_confirm {int /*<<< orphan*/  sc_clientid; int /*<<< orphan*/  sc_confirm; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_confirm; int /*<<< orphan*/  cl_recdir; int /*<<< orphan*/  cl_cred; int /*<<< orphan*/  cl_cb_conn; int /*<<< orphan*/  cl_cb_set; int /*<<< orphan*/  cl_addr; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;
typedef  int /*<<< orphan*/  clientid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 
 struct nfs4_client* FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfs4_client* FUNC5 (int /*<<< orphan*/ ,unsigned int,int) ; 
 struct nfs4_client* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC10 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs4_client*) ; 
 int /*<<< orphan*/  nfserr_clid_inuse ; 
 int /*<<< orphan*/  nfserr_stale_clientid ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC16 (struct svc_rqst*) ; 

__be32
FUNC17(struct svc_rqst *rqstp,
			 struct nfsd4_compound_state *cstate,
			 struct nfsd4_setclientid_confirm *setclientid_confirm)
{
	struct sockaddr *sa = FUNC16(rqstp);
	struct nfs4_client *conf, *unconf;
	nfs4_verifier confirm = setclientid_confirm->sc_confirm; 
	clientid_t * clid = &setclientid_confirm->sc_clientid;
	__be32 status;

	if (FUNC0(clid))
		return nfserr_stale_clientid;
	/* 
	 * XXX The Duplicate Request Cache (DRC) has been checked (??)
	 * We get here on a DRC miss.
	 */

	FUNC8();

	conf = FUNC4(clid);
	unconf = FUNC6(clid);

	status = nfserr_clid_inuse;
	if (conf && !FUNC13((struct sockaddr *) &conf->cl_addr, sa))
		goto out;
	if (unconf && !FUNC13((struct sockaddr *) &unconf->cl_addr, sa))
		goto out;

	/*
	 * section 14.2.34 of RFC 3530 has a description of
	 * SETCLIENTID_CONFIRM request processing consisting
	 * of 4 bullet points, labeled as CASE1 - CASE4 below.
	 */
	if (conf && unconf && FUNC15(&confirm, &unconf->cl_confirm)) {
		/*
		 * RFC 3530 14.2.34 CASE 1:
		 * callback update
		 */
		if (!FUNC14(&conf->cl_cred, &unconf->cl_cred))
			status = nfserr_clid_inuse;
		else {
			FUNC1(&conf->cl_cb_set, 0);
			FUNC10(conf, &unconf->cl_cb_conn);
			FUNC11(conf);
			FUNC3(unconf);
			status = nfs_ok;

		}
	} else if (conf && !unconf) {
		/*
		 * RFC 3530 14.2.34 CASE 2:
		 * probable retransmitted request; play it safe and
		 * do nothing.
		 */
		if (!FUNC14(&conf->cl_cred, &rqstp->rq_cred))
			status = nfserr_clid_inuse;
		else
			status = nfs_ok;
	} else if (!conf && unconf
			&& FUNC15(&unconf->cl_confirm, &confirm)) {
		/*
		 * RFC 3530 14.2.34 CASE 3:
		 * Normal case; new or rebooted client:
		 */
		if (!FUNC14(&unconf->cl_cred, &rqstp->rq_cred)) {
			status = nfserr_clid_inuse;
		} else {
			unsigned int hash =
				FUNC2(unconf->cl_recdir);
			conf = FUNC5(unconf->cl_recdir,
							    hash, false);
			if (conf) {
				FUNC12(conf);
				FUNC3(conf);
			}
			FUNC7(unconf);
			conf = unconf;
			FUNC11(conf);
			status = nfs_ok;
		}
	} else if ((!conf || (conf && !FUNC15(&conf->cl_confirm, &confirm)))
	    && (!unconf || (unconf && !FUNC15(&unconf->cl_confirm,
				    				&confirm)))) {
		/*
		 * RFC 3530 14.2.34 CASE 4:
		 * Client probably hasn't noticed that we rebooted yet.
		 */
		status = nfserr_stale_clientid;
	} else {
		/* check that we have hit one of the cases...*/
		status = nfserr_clid_inuse;
	}
out:
	FUNC9();
	return status;
}