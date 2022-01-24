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
struct nfs_commitargs {int /*<<< orphan*/  count; int /*<<< orphan*/  offset; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs_commitargs *args)
{
	p = FUNC2(p, args->fh);
	p = FUNC3(p, args->offset);
	*p++ = FUNC0(args->count);
	req->rq_slen = FUNC1(req->rq_svec, p);
	return 0;
}