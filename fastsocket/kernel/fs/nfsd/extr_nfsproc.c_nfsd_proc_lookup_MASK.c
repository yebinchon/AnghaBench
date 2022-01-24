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
struct nfsd_diropres {int /*<<< orphan*/  fh; } ;
struct nfsd_diropargs {int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nfsd_diropres*) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp, struct nfsd_diropargs *argp,
					 struct nfsd_diropres  *resp)
{
	__be32	nfserr;

	FUNC1("nfsd: LOOKUP   %s %.*s\n",
		FUNC0(&argp->fh), argp->len, argp->name);

	FUNC2(&resp->fh, NFS_FHSIZE);
	nfserr = FUNC4(rqstp, &argp->fh, argp->name, argp->len,
				 &resp->fh);

	FUNC3(&argp->fh);
	return FUNC5(nfserr, resp);
}