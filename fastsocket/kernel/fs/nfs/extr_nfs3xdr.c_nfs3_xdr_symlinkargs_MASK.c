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
struct rpc_rqst {int /*<<< orphan*/  rq_snd_buf; int /*<<< orphan*/  rq_svec; int /*<<< orphan*/  rq_slen; } ;
struct nfs3_symlinkargs {int /*<<< orphan*/  pathlen; int /*<<< orphan*/  pages; int /*<<< orphan*/  sattr; int /*<<< orphan*/  fromlen; int /*<<< orphan*/  fromname; int /*<<< orphan*/  fromfh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct rpc_rqst *req, __be32 *p, struct nfs3_symlinkargs *args)
{
	p = FUNC3(p, args->fromfh);
	p = FUNC2(p, args->fromname, args->fromlen);
	p = FUNC5(p, args->sattr);
	*p++ = FUNC0(args->pathlen);
	req->rq_slen = FUNC1(req->rq_svec, p);

	/* Copy the page */
	FUNC4(&req->rq_snd_buf, args->pages, 0, args->pathlen);
	return 0;
}