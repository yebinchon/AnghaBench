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
struct TYPE_2__ {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; int /*<<< orphan*/  save_fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_nofilehandle ; 

__attribute__((used)) static __be32
FUNC1(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	     void *arg)
{
	if (!cstate->current_fh.fh_dentry)
		return nfserr_nofilehandle;

	FUNC0(&cstate->save_fh, &cstate->current_fh);
	return nfs_ok;
}