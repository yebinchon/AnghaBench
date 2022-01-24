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
struct nfsd4_op {int /*<<< orphan*/  opnum; struct nfs4_replay* replay; } ;
struct nfsd4_compoundres {int dummy; } ;
struct nfs4_replay {int rp_buflen; int /*<<< orphan*/  rp_buf; int /*<<< orphan*/  rp_status; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct nfsd4_compoundres *resp, struct nfsd4_op *op)
{
	__be32 *p;
	struct nfs4_replay *rp = op->replay;

	FUNC1(!rp);

	FUNC2(8);
	FUNC3(op->opnum);
	*p++ = rp->rp_status;  /* already xdr'ed */
	FUNC0();

	FUNC2(rp->rp_buflen);
	FUNC4(rp->rp_buf, rp->rp_buflen);
	FUNC0();
}