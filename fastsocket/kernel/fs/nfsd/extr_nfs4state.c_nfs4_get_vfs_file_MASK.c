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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfs4_file {int /*<<< orphan*/ * fi_fds; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFREG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*,int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC4(struct svc_rqst *rqstp, struct nfs4_file
*fp, struct svc_fh *cur_fh, u32 nfs4_access)
{
	__be32 status;
	int oflag = FUNC1(nfs4_access);
	int access = FUNC0(nfs4_access);

	if (!fp->fi_fds[oflag]) {
		status = FUNC3(rqstp, cur_fh, S_IFREG, access,
			&fp->fi_fds[oflag]);
		if (status)
			return status;
	}
	FUNC2(fp, oflag);

	return nfs_ok;
}