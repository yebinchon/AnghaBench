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
struct nfsd4_remove {int /*<<< orphan*/  rm_cinfo; int /*<<< orphan*/  rm_namelen; int /*<<< orphan*/  rm_name; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_grace ; 
 scalar_t__ nfserr_notdir ; 
 scalar_t__ nfserr_symlink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	     struct nfsd4_remove *remove)
{
	__be32 status;

	if (FUNC1())
		return nfserr_grace;
	status = FUNC2(rqstp, &cstate->current_fh, 0,
			     remove->rm_name, remove->rm_namelen);
	if (status == nfserr_symlink)
		return nfserr_notdir;
	if (!status) {
		FUNC0(&cstate->current_fh);
		FUNC3(&remove->rm_cinfo, &cstate->current_fh);
	}
	return status;
}