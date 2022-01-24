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
struct nfsd_attrstat {int /*<<< orphan*/  fh; } ;
struct nfsd3_setaclargs {int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  NFSD_MAY_SATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC7(struct svc_rqst * rqstp,
		struct nfsd3_setaclargs *argp,
		struct nfsd_attrstat *resp)
{
	svc_fh *fh;
	__be32 nfserr = 0;

	FUNC1("nfsd: SETACL(2acl)   %s\n", FUNC0(&argp->fh));

	fh = FUNC2(&resp->fh, &argp->fh);
	nfserr = FUNC3(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);

	if (!nfserr) {
		nfserr = FUNC5( FUNC4(
			fh, ACL_TYPE_ACCESS, argp->acl_access) );
	}
	if (!nfserr) {
		nfserr = FUNC5( FUNC4(
			fh, ACL_TYPE_DEFAULT, argp->acl_default) );
	}

	/* argp->acl_{access,default} may have been allocated in
	   nfssvc_decode_setaclargs. */
	FUNC6(argp->acl_access);
	FUNC6(argp->acl_default);
	return nfserr;
}