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
struct nfsd_readlinkres {int /*<<< orphan*/  len; } ;
struct nfsd_readlinkargs {int /*<<< orphan*/  fh; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd_readlinkargs *argp,
					   struct nfsd_readlinkres *resp)
{
	__be32	nfserr;

	FUNC1("nfsd: READLINK %s\n", FUNC0(&argp->fh));

	/* Read the symlink. */
	resp->len = NFS_MAXPATHLEN;
	nfserr = FUNC3(rqstp, &argp->fh, argp->buffer, &resp->len);

	FUNC2(&argp->fh);
	return nfserr;
}