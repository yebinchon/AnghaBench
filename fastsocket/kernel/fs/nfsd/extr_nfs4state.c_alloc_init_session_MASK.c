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
struct svc_rqst {int /*<<< orphan*/  rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct nfsd4_session {int se_cb_seq_nr; int se_flags; int /*<<< orphan*/  se_ref; int /*<<< orphan*/  se_perclnt; int /*<<< orphan*/  se_hash; int /*<<< orphan*/  se_sessionid; int /*<<< orphan*/  se_cb_prog; int /*<<< orphan*/  se_conns; struct nfs4_client* se_client; int /*<<< orphan*/  se_fchannel; } ;
struct nfsd4_channel_attrs {int /*<<< orphan*/  maxreqs; int /*<<< orphan*/  maxresp_cached; } ;
struct nfsd4_create_session {int flags; int /*<<< orphan*/  callback_prog; struct nfsd4_channel_attrs fore_channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_addrlen; int /*<<< orphan*/  cb_addr; int /*<<< orphan*/  cb_xprt; } ;
struct nfs4_client {TYPE_1__ cl_cb_conn; struct nfsd4_session* cl_cb_session; int /*<<< orphan*/  cl_sessions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SESSION4_BACK_CHAN ; 
 struct nfsd4_session* FUNC1 (int,int) ; 
 int /*<<< orphan*/  client_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_session*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nfsd4_channel_attrs*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct svc_rqst*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/ * sessionid_hashtbl ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC16 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfsd4_session *FUNC19(struct svc_rqst *rqstp, struct nfs4_client *clp, struct nfsd4_create_session *cses)
{
	struct nfsd4_session *new;
	struct nfsd4_channel_attrs *fchan = &cses->fore_channel;
	int numslots, slotsize;
	int status;
	int idx;

	/*
	 * Note decreasing slot size below client's request may
	 * make it difficult for client to function correctly, whereas
	 * decreasing the number of slots will (just?) affect
	 * performance.  When short on memory we therefore prefer to
	 * decrease number of slots instead of their size.
	 */
	slotsize = FUNC12(fchan->maxresp_cached);
	numslots = FUNC8(slotsize, fchan->maxreqs);

	new = FUNC1(slotsize, numslots);
	if (!new) {
		FUNC11(slotsize, fchan->maxreqs);
		return NULL;
	}
	FUNC5(&new->se_fchannel, fchan, numslots, slotsize);

	new->se_client = clp;
	FUNC3(new);

	FUNC0(&new->se_conns);

	new->se_cb_seq_nr = 1;
	new->se_flags = cses->flags;
	new->se_cb_prog = cses->callback_prog;
	FUNC6(&new->se_ref);
	idx = FUNC4(&new->se_sessionid);
	FUNC14(&client_lock);
	FUNC7(&new->se_hash, &sessionid_hashtbl[idx]);
	FUNC7(&new->se_perclnt, &clp->cl_sessions);
	FUNC15(&client_lock);

	status = FUNC9(rqstp, new);
	/* whoops: benny points out, status is ignored! (err, or bogus) */
	if (status) {
		FUNC2(&new->se_ref);
		return NULL;
	}
	if (!clp->cl_cb_session && (cses->flags & SESSION4_BACK_CHAN)) {
		struct sockaddr *sa = FUNC16(rqstp);

		clp->cl_cb_session = new;
		clp->cl_cb_conn.cb_xprt = rqstp->rq_xprt;
		FUNC18(rqstp->rq_xprt);
		FUNC13((struct sockaddr *)&clp->cl_cb_conn.cb_addr, sa);
		clp->cl_cb_conn.cb_addrlen = FUNC17(sa);
		FUNC10(clp);
	}
	return new;
}