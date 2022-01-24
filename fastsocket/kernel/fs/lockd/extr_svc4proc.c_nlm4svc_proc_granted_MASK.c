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
struct nlm_args {int /*<<< orphan*/  lock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_success ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nlm_args *argp,
				            struct nlm_res  *resp)
{
	resp->cookie = argp->cookie;

	FUNC0("lockd: GRANTED       called\n");
	resp->status = FUNC1(FUNC3(rqstp), &argp->lock);
	FUNC0("lockd: GRANTED       status %d\n", FUNC2(resp->status));
	return rpc_success;
}