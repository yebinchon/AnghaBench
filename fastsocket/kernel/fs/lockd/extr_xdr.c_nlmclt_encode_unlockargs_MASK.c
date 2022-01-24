#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_rqst {int /*<<< orphan*/  rq_svec; int /*<<< orphan*/  rq_slen; } ;
struct nlm_lock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; struct nlm_lock lock; } ;
typedef  TYPE_1__ nlm_args ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct nlm_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct rpc_rqst *req, __be32 *p, nlm_args *argp)
{
	struct nlm_lock	*lock = &argp->lock;

	if (!(p = FUNC0(p, &argp->cookie)))
		return -EIO;
	if (!(p = FUNC1(p, lock)))
		return -EIO;
	req->rq_slen = FUNC2(req->rq_svec, p);
	return 0;
}