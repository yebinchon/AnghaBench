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
struct nfsd3_renameres {int /*<<< orphan*/  tfh; int /*<<< orphan*/  ffh; } ;
struct nfsd3_renameargs {int /*<<< orphan*/  tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; int /*<<< orphan*/  tfh; int /*<<< orphan*/  ffh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd3_renameargs *argp,
					  struct nfsd3_renameres  *resp)
{
	__be32	nfserr;

	FUNC2("nfsd: RENAME(3)   %s %.*s ->\n",
				FUNC1(&argp->ffh),
				argp->flen,
				argp->fname);
	FUNC2("nfsd: -> %s %.*s\n",
				FUNC1(&argp->tfh),
				argp->tlen,
				argp->tname);

	FUNC3(&resp->ffh, &argp->ffh);
	FUNC3(&resp->tfh, &argp->tfh);
	nfserr = FUNC4(rqstp, &resp->ffh, argp->fname, argp->flen,
				    &resp->tfh, argp->tname, argp->tlen);
	FUNC0(nfserr);
}