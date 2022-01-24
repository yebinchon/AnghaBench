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
struct nlm_res {int /*<<< orphan*/  status; int /*<<< orphan*/  cookie; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int /*<<< orphan*/  reclaim; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ; 
 int /*<<< orphan*/  nlm_drop_reply ; 
 int /*<<< orphan*/  nlm_lck_denied_grace_period ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*,struct nlm_file*,struct nlm_args*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_drop_reply ; 
 int /*<<< orphan*/  rpc_success ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nlm_args *argp,
				          struct nlm_res  *resp)
{
	struct nlm_host	*host;
	struct nlm_file	*file;

	FUNC0("lockd: SHARE         called\n");

	resp->cookie = argp->cookie;

	/* Don't accept new lock requests during grace period */
	if (FUNC1() && !argp->reclaim) {
		resp->status = nlm_lck_denied_grace_period;
		return rpc_success;
	}

	/* Obtain client and file */
	if ((resp->status = FUNC2(rqstp, argp, &host, &file)))
		return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;

	/* Now try to create the share */
	resp->status = FUNC5(host, file, argp);

	FUNC0("lockd: SHARE         status %d\n", FUNC6(resp->status));
	FUNC4(host);
	FUNC3(file);
	return rpc_success;
}