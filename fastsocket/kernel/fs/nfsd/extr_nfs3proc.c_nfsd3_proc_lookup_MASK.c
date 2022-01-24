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
struct nfsd3_diropres {int /*<<< orphan*/  fh; int /*<<< orphan*/  dirfh; } ;
struct nfsd3_diropargs {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS3_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp, struct nfsd3_diropargs *argp,
					  struct nfsd3_diropres  *resp)
{
	__be32	nfserr;

	FUNC2("nfsd: LOOKUP(3)   %s %.*s\n",
				FUNC1(&argp->fh),
				argp->len,
				argp->name);

	FUNC3(&resp->dirfh, &argp->fh);
	FUNC4(&resp->fh, NFS3_FHSIZE);

	nfserr = FUNC5(rqstp, &resp->dirfh,
				    argp->name,
				    argp->len,
				    &resp->fh);
	FUNC0(nfserr);
}