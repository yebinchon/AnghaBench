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
struct nlm_res {int /*<<< orphan*/  status; int /*<<< orphan*/  cookie; int /*<<< orphan*/  lock; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int /*<<< orphan*/  lock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ; 
 int /*<<< orphan*/  nlm_drop_reply ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct nlm_file*,struct nlm_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_drop_reply ; 
 int /*<<< orphan*/  rpc_success ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp, struct nlm_args *argp,
				         struct nlm_res  *resp)
{
	struct nlm_host	*host;
	struct nlm_file	*file;
	__be32 rc = rpc_success;

	FUNC0("lockd: TEST4        called\n");
	resp->cookie = argp->cookie;

	/* Obtain client and file */
	if ((resp->status = FUNC1(rqstp, argp, &host, &file)))
		return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;

	/* Now check for conflicting locks */
	resp->status = FUNC4(rqstp, file, host, &argp->lock, &resp->lock, &resp->cookie);
	if (resp->status == nlm_drop_reply)
		rc = rpc_drop_reply;
	else
		FUNC0("lockd: TEST4        status %d\n", FUNC5(resp->status));

	FUNC3(host);
	FUNC2(file);
	return rc;
}