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
struct nfsd4_verify {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_verify*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ nfserr_not_same ; 

__attribute__((used)) static __be32
FUNC1(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	      struct nfsd4_verify *verify)
{
	__be32 status;

	status = FUNC0(rqstp, cstate, verify);
	return status == nfserr_not_same ? nfs_ok : status;
}