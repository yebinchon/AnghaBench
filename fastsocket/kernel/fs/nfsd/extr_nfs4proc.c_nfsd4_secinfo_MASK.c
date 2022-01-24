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
struct svc_export {int dummy; } ;
struct nfsd4_secinfo {struct svc_export* si_exp; int /*<<< orphan*/  si_namelen; int /*<<< orphan*/  si_name; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
struct dentry {int /*<<< orphan*/ * d_inode; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_export**,struct dentry**) ; 
 scalar_t__ nfserr_noent ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	      struct nfsd4_secinfo *secinfo)
{
	struct svc_fh resfh;
	struct svc_export *exp;
	struct dentry *dentry;
	__be32 err;

	FUNC2(&resfh, NFS4_FHSIZE);
	err = FUNC3(rqstp, &cstate->current_fh,
				    secinfo->si_name, secinfo->si_namelen,
				    &exp, &dentry);
	if (err)
		return err;
	if (dentry->d_inode == NULL) {
		FUNC1(exp);
		err = nfserr_noent;
	} else
		secinfo->si_exp = exp;
	FUNC0(dentry);
	return err;
}