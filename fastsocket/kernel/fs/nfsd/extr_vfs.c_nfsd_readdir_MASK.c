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
struct svc_rqst {int rq_vers; } ;
struct svc_fh {int dummy; } ;
struct readdir_cd {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  filldir_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFSD_MAY_64BIT_COOKIE ; 
 int NFSD_MAY_READ ; 
 int /*<<< orphan*/  S_IFDIR ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC0 (struct file*,int /*<<< orphan*/ ,struct readdir_cd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int,struct file**) ; 
 scalar_t__ nfserr_eof ; 
 scalar_t__ nfserr_toosmall ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct file*,scalar_t__,int /*<<< orphan*/ ) ; 

__be32
FUNC5(struct svc_rqst *rqstp, struct svc_fh *fhp, loff_t *offsetp, 
	     struct readdir_cd *cdp, filldir_t func)
{
	__be32		err;
	struct file	*file;
	loff_t		offset = *offsetp;
	int             may_flags = NFSD_MAY_READ;

	/* NFSv2 only supports 32 bit cookies */
	if (rqstp->rq_vers > 2)
		may_flags |= NFSD_MAY_64BIT_COOKIE;

	err = FUNC2(rqstp, fhp, S_IFDIR, may_flags, &file);
	if (err)
		goto out;

	offset = FUNC4(file, offset, 0);
	if (offset < 0) {
		err = FUNC3((int)offset);
		goto out_close;
	}

	err = FUNC0(file, func, cdp, offsetp);

	if (err == nfserr_eof || err == nfserr_toosmall)
		err = nfs_ok; /* can still be found in ->err */
out_close:
	FUNC1(file);
out:
	return err;
}