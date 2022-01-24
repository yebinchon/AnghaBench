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
typedef  int /*<<< orphan*/  svc_fh ;
struct svc_rqst {int dummy; } ;
struct nfsd3_setaclargs {int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;
struct nfsd3_attrstat {int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  NFSD_MAY_SATTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC6(struct svc_rqst * rqstp,
		struct nfsd3_setaclargs *argp,
		struct nfsd3_attrstat *resp)
{
	svc_fh *fh;
	__be32 nfserr = 0;

	fh = FUNC1(&resp->fh, &argp->fh);
	nfserr = FUNC2(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);

	if (!nfserr) {
		nfserr = FUNC4( FUNC3(
			fh, ACL_TYPE_ACCESS, argp->acl_access) );
	}
	if (!nfserr) {
		nfserr = FUNC4( FUNC3(
			fh, ACL_TYPE_DEFAULT, argp->acl_default) );
	}

	/* argp->acl_{access,default} may have been allocated in
	   nfs3svc_decode_setaclargs. */
	FUNC5(argp->acl_access);
	FUNC5(argp->acl_default);
	FUNC0(nfserr);
}