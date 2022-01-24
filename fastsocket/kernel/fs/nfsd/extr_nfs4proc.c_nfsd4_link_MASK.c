#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd4_link {int /*<<< orphan*/  li_cinfo; int /*<<< orphan*/  li_namelen; int /*<<< orphan*/  li_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; TYPE_1__ save_fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  nfserr_nofilehandle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC2(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	   struct nfsd4_link *link)
{
	__be32 status = nfserr_nofilehandle;

	if (!cstate->save_fh.fh_dentry)
		return status;
	status = FUNC0(rqstp, &cstate->current_fh,
			   link->li_name, link->li_namelen, &cstate->save_fh);
	if (!status)
		FUNC1(&link->li_cinfo, &cstate->current_fh);
	return status;
}