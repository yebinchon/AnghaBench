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
struct nlm_args {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NLMPROC_UNLOCK_RES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,int /*<<< orphan*/ ,struct nlm_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm4svc_proc_unlock ; 

__attribute__((used)) static __be32 FUNC2(struct svc_rqst *rqstp, struct nlm_args *argp,
                                               void            *resp)
{
	FUNC0("lockd: UNLOCK_MSG    called\n");
	return FUNC1(rqstp, NLMPROC_UNLOCK_RES, argp, nlm4svc_proc_unlock);
}