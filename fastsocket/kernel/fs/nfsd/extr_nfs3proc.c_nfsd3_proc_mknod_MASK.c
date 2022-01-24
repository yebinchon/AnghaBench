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
struct nfsd3_mknodargs {size_t ftype; scalar_t__ major; scalar_t__ minor; int /*<<< orphan*/  attrs; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
struct nfsd3_diropres {int /*<<< orphan*/  dirfh; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 size_t NF3BAD ; 
 size_t NF3BLK ; 
 size_t NF3CHR ; 
 size_t NF3FIFO ; 
 size_t NF3SOCK ; 
 int /*<<< orphan*/  NFS3_FHSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* nfs3_ftypes ; 
 int /*<<< orphan*/  FUNC9 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_inval ; 

__attribute__((used)) static __be32
FUNC10(struct svc_rqst *rqstp, struct nfsd3_mknodargs *argp,
					 struct nfsd3_diropres  *resp)
{
	__be32	nfserr;
	int type;
	dev_t	rdev = 0;

	FUNC5("nfsd: MKNOD(3)    %s %.*s\n",
				FUNC4(&argp->fh),
				argp->len,
				argp->name);

	FUNC6(&resp->dirfh, &argp->fh);
	FUNC7(&resp->fh, NFS3_FHSIZE);

	if (argp->ftype == 0 || argp->ftype >= NF3BAD)
		FUNC3(nfserr_inval);
	if (argp->ftype == NF3CHR || argp->ftype == NF3BLK) {
		rdev = FUNC2(argp->major, argp->minor);
		if (FUNC0(rdev) != argp->major ||
		    FUNC1(rdev) != argp->minor)
			FUNC3(nfserr_inval);
	} else
		if (argp->ftype != NF3SOCK && argp->ftype != NF3FIFO)
			FUNC3(nfserr_inval);

	type = nfs3_ftypes[argp->ftype];
	nfserr = FUNC9(rqstp, &resp->dirfh, argp->name, argp->len,
				    &argp->attrs, type, rdev, &resp->fh);
	FUNC8(&resp->dirfh);
	FUNC3(nfserr);
}