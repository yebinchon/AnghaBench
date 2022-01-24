#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ia_valid; } ;
struct nfsd4_create {int cr_type; size_t cr_linklen; int /*<<< orphan*/  cr_cinfo; int /*<<< orphan*/  cr_bmval; int /*<<< orphan*/ * cr_acl; TYPE_1__ cr_iattr; int /*<<< orphan*/  cr_namelen; int /*<<< orphan*/  cr_name; int /*<<< orphan*/  cr_specdata2; int /*<<< orphan*/  cr_specdata1; int /*<<< orphan*/ * cr_linkname; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  NF4BLK 133 
#define  NF4CHR 132 
#define  NF4DIR 131 
#define  NF4FIFO 130 
#define  NF4LNK 129 
#define  NF4SOCK 128 
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFIFO ; 
 int /*<<< orphan*/  S_IFSOCK ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_attrmask ; 
 scalar_t__ FUNC10 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_fh*) ; 
 scalar_t__ FUNC11 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,struct svc_fh*,TYPE_1__*) ; 
 scalar_t__ nfserr_badtype ; 
 scalar_t__ nfserr_inval ; 
 scalar_t__ nfserr_notdir ; 
 scalar_t__ nfserr_symlink ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC13(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	     struct nfsd4_create *create)
{
	struct svc_fh resfh;
	__be32 status;
	dev_t rdev;

	FUNC6(&resfh, NFS4_FHSIZE);

	status = FUNC9(rqstp, &cstate->current_fh, S_IFDIR,
			   NFSD_MAY_CREATE);
	if (status == nfserr_symlink)
		status = nfserr_notdir;
	if (status)
		return status;

	status = FUNC3(rqstp, cstate, create->cr_bmval,
				    nfsd_attrmask);
	if (status)
		return status;

	switch (create->cr_type) {
	case NF4LNK:
		/* ugh! we have to null-terminate the linktext, or
		 * vfs_symlink() will choke.  it is always safe to
		 * null-terminate by brute force, since at worst we
		 * will overwrite the first byte of the create namelen
		 * in the XDR buffer, which has already been extracted
		 * during XDR decode.
		 */
		create->cr_linkname[create->cr_linklen] = 0;

		status = FUNC11(rqstp, &cstate->current_fh,
				      create->cr_name, create->cr_namelen,
				      create->cr_linkname, create->cr_linklen,
				      &resfh, &create->cr_iattr);
		break;

	case NF4BLK:
		rdev = FUNC2(create->cr_specdata1, create->cr_specdata2);
		if (FUNC0(rdev) != create->cr_specdata1 ||
		    FUNC1(rdev) != create->cr_specdata2)
			return nfserr_inval;
		status = FUNC10(rqstp, &cstate->current_fh,
				     create->cr_name, create->cr_namelen,
				     &create->cr_iattr, S_IFBLK, rdev, &resfh);
		break;

	case NF4CHR:
		rdev = FUNC2(create->cr_specdata1, create->cr_specdata2);
		if (FUNC0(rdev) != create->cr_specdata1 ||
		    FUNC1(rdev) != create->cr_specdata2)
			return nfserr_inval;
		status = FUNC10(rqstp, &cstate->current_fh,
				     create->cr_name, create->cr_namelen,
				     &create->cr_iattr,S_IFCHR, rdev, &resfh);
		break;

	case NF4SOCK:
		status = FUNC10(rqstp, &cstate->current_fh,
				     create->cr_name, create->cr_namelen,
				     &create->cr_iattr, S_IFSOCK, 0, &resfh);
		break;

	case NF4FIFO:
		status = FUNC10(rqstp, &cstate->current_fh,
				     create->cr_name, create->cr_namelen,
				     &create->cr_iattr, S_IFIFO, 0, &resfh);
		break;

	case NF4DIR:
		create->cr_iattr.ia_valid &= ~ATTR_SIZE;
		status = FUNC10(rqstp, &cstate->current_fh,
				     create->cr_name, create->cr_namelen,
				     &create->cr_iattr, S_IFDIR, 0, &resfh);
		break;

	default:
		status = nfserr_badtype;
	}

	if (status)
		goto out;

	if (create->cr_acl != NULL)
		FUNC4(rqstp, &resfh, create->cr_acl,
				create->cr_bmval);

	FUNC8(&cstate->current_fh);
	FUNC12(&create->cr_cinfo, &cstate->current_fh);
	FUNC5(&cstate->current_fh, &resfh);
out:
	FUNC7(&resfh);
	return status;
}