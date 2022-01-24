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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {scalar_t__ rq_flavor; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ RPC_AUTH_GSS ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ nfs4_disable_idmapping ; 
 scalar_t__ FUNC1 (struct svc_rqst*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC2(struct svc_rqst *rqstp, int type, const char *name, u32 namelen, uid_t *id)
{
	if (nfs4_disable_idmapping && rqstp->rq_flavor < RPC_AUTH_GSS)
		if (FUNC1(rqstp, type, name, namelen, id))
			return 0;
		/*
		 * otherwise, fall through and try idmapping, for
		 * backwards compatibility with clients sending names:
		 */
	return FUNC0(rqstp, type, name, namelen, id);
}