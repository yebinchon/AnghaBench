#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  err; } ;
struct nfsd3_readdirres {int buflen; scalar_t__ offset; scalar_t__ buffer; scalar_t__ count; int /*<<< orphan*/  verf; TYPE_1__ common; int /*<<< orphan*/  fh; struct svc_rqst* rqstp; } ;
struct nfsd3_readdirargs {int count; scalar_t__ cookie; scalar_t__ buffer; int /*<<< orphan*/  verf; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs3svc_encode_entry ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nfsd3_readdirargs *argp,
					   struct nfsd3_readdirres  *resp)
{
	__be32		nfserr;
	int		count;

	FUNC2("nfsd: READDIR(3)  %s %d bytes at %d\n",
				FUNC1(&argp->fh),
				argp->count, (u32) argp->cookie);

	/* Make sure we've room for the NULL ptr & eof flag, and shrink to
	 * client read size */
	count = (argp->count >> 2) - 2;

	/* Read directory and encode entries on the fly */
	FUNC3(&resp->fh, &argp->fh);

	resp->buflen = count;
	resp->common.err = nfs_ok;
	resp->buffer = argp->buffer;
	resp->rqstp = rqstp;
	nfserr = FUNC5(rqstp, &resp->fh, (loff_t*) &argp->cookie, 
					&resp->common, nfs3svc_encode_entry);
	FUNC4(resp->verf, argp->verf, 8);
	resp->count = resp->buffer - argp->buffer;
	if (resp->offset)
		FUNC6(resp->offset, argp->cookie);

	FUNC0(nfserr);
}