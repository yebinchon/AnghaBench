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
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_export*,struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 scalar_t__ FUNC3 (struct svc_fh*,struct svc_export*,struct dentry*,struct svc_fh*) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,struct svc_fh*,char const*,unsigned int,struct svc_export**,struct dentry**) ; 
 scalar_t__ nfserr_noent ; 

__be32
FUNC5(struct svc_rqst *rqstp, struct svc_fh *fhp, const char *name,
				unsigned int len, struct svc_fh *resfh)
{
	struct svc_export	*exp;
	struct dentry		*dentry;
	__be32 err;

	err = FUNC4(rqstp, fhp, name, len, &exp, &dentry);
	if (err)
		return err;
	err = FUNC0(exp, rqstp);
	if (err)
		goto out;
	/*
	 * Note: we compose the file handle now, but as the
	 * dentry may be negative, it may need to be updated.
	 */
	err = FUNC3(resfh, exp, dentry, fhp);
	if (!err && !dentry->d_inode)
		err = nfserr_noent;
out:
	FUNC1(dentry);
	FUNC2(exp);
	return err;
}