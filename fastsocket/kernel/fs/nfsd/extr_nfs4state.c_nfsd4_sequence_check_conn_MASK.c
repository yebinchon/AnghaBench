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
struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfsd4_conn {int /*<<< orphan*/  cn_xpt_user; int /*<<< orphan*/  cn_xprt; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 struct nfsd4_conn* FUNC0 (int /*<<< orphan*/ ,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nfsd4_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfsd4_conn *new, struct nfsd4_session *ses)
{
	struct nfs4_client *clp = ses->se_client;
	struct nfsd4_conn *c;
	int ret;

	FUNC5(&clp->cl_lock);
	c = FUNC0(new->cn_xprt, ses);
	if (c) {
		FUNC6(&clp->cl_lock);
		FUNC2(new);
		return;
	}
	FUNC1(new, ses);
	FUNC6(&clp->cl_lock);
	ret = FUNC4(new);
	if (ret)
		/* oops; xprt is already down: */
		FUNC3(&new->cn_xpt_user);
	return;
}