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
struct svc_fh {int dummy; } ;
struct nfsd_symlinkargs {struct svc_fh ffh; int /*<<< orphan*/  attrs; int /*<<< orphan*/  tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp, struct nfsd_symlinkargs *argp,
				          void			  *resp)
{
	struct svc_fh	newfh;
	__be32		nfserr;

	FUNC1("nfsd: SYMLINK  %s %.*s -> %.*s\n",
		FUNC0(&argp->ffh), argp->flen, argp->fname,
		argp->tlen, argp->tname);

	FUNC2(&newfh, NFS_FHSIZE);
	/*
	 * Create the link, look up new file and set attrs.
	 */
	nfserr = FUNC4(rqstp, &argp->ffh, argp->fname, argp->flen,
						 argp->tname, argp->tlen,
				 		 &newfh, &argp->attrs);


	FUNC3(&argp->ffh);
	FUNC3(&newfh);
	return nfserr;
}