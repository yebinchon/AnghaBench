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
struct rpc_rqst {int dummy; } ;
struct nfs4_create_res {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct rpc_rqst*,int /*<<< orphan*/ *,struct nfs4_create_res*) ; 

__attribute__((used)) static int FUNC1(struct rpc_rqst *rqstp, __be32 *p, struct nfs4_create_res *res)
{
	return FUNC0(rqstp, p, res);
}