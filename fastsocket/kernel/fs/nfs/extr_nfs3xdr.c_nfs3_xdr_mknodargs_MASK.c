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
struct nfs3_mknodargs {scalar_t__ type; int /*<<< orphan*/  rdev; int /*<<< orphan*/  sattr; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NF3BLK ; 
 scalar_t__ NF3CHR ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct rpc_rqst *req, __be32 *p, struct nfs3_mknodargs *args)
{
	p = FUNC5(p, args->fh);
	p = FUNC4(p, args->name, args->len);
	*p++ = FUNC2(args->type);
	p = FUNC6(p, args->sattr);
	if (args->type == NF3CHR || args->type == NF3BLK) {
		*p++ = FUNC2(FUNC0(args->rdev));
		*p++ = FUNC2(FUNC1(args->rdev));
	}

	req->rq_slen = FUNC3(req->rq_svec, p);
	return 0;
}