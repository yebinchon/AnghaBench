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
struct svc_fh {int /*<<< orphan*/  fh_dentry; int /*<<< orphan*/  fh_export; } ;
struct kvec {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFSD_MAY_OWNER_OVERRIDE ; 
 int NFSD_MAY_WRITE ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int,struct file**) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,struct kvec*,int,unsigned long*,int*) ; 

__be32
FUNC4(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file *file,
		loff_t offset, struct kvec *vec, int vlen, unsigned long *cnt,
		int *stablep)
{
	__be32			err = 0;

	if (file) {
		err = FUNC2(rqstp, fhp->fh_export, fhp->fh_dentry,
				NFSD_MAY_WRITE|NFSD_MAY_OWNER_OVERRIDE);
		if (err)
			goto out;
		err = FUNC3(rqstp, fhp, file, offset, vec, vlen, cnt,
				stablep);
	} else {
		err = FUNC1(rqstp, fhp, S_IFREG, NFSD_MAY_WRITE, &file);
		if (err)
			goto out;

		if (cnt)
			err = FUNC3(rqstp, fhp, file, offset, vec, vlen,
					     cnt, stablep);
		FUNC0(file);
	}
out:
	return err;
}