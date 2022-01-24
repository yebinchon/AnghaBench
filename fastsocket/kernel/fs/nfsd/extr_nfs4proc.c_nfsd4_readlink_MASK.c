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
struct nfsd4_readlink {int /*<<< orphan*/ * rl_fhp; struct svc_rqst* rl_rqstp; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  nfs_ok ; 

__attribute__((used)) static __be32
FUNC0(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	       struct nfsd4_readlink *readlink)
{
	readlink->rl_rqstp = rqstp;
	readlink->rl_fhp = &cstate->current_fh;
	return nfs_ok;
}