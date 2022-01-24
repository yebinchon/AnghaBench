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
struct rpc_rqst {int /*<<< orphan*/  rq_svec; int /*<<< orphan*/  rq_slen; } ;
struct nfs_fh {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct nfs_fh*) ; 

__attribute__((used)) static int
FUNC2(struct rpc_rqst *req, __be32 *p, struct nfs_fh *fh)
{
	p = FUNC1(p, fh);
	req->rq_slen = FUNC0(req->rq_svec, p);
	return 0;
}