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
struct rpc_message {struct nfs4_readlink_res* rpc_resp; struct nfs4_readlink* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs4_readlink_res {int /*<<< orphan*/  seq_res; } ;
struct nfs4_readlink {unsigned int pgbase; unsigned int pglen; int /*<<< orphan*/  seq_args; struct page** pages; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_READLINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct page *page,
		unsigned int pgbase, unsigned int pglen)
{
	struct nfs4_readlink args = {
		.fh       = FUNC0(inode),
		.pgbase	  = pgbase,
		.pglen    = pglen,
		.pages    = &page,
	};
	struct nfs4_readlink_res res;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_READLINK],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};

	return FUNC2(FUNC1(inode)->client, FUNC1(inode), &msg, &args.seq_args, &res.seq_res, 0);
}