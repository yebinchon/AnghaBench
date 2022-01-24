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
struct nfs2_fsstat {void* bavail; void* bfree; void* blocks; void* bsize; void* tsize; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct rpc_rqst *req, __be32 *p, struct nfs2_fsstat *res)
{
	int	status;

	if ((status = FUNC1(*p++)))
		return FUNC0(status);

	res->tsize  = FUNC1(*p++);
	res->bsize  = FUNC1(*p++);
	res->blocks = FUNC1(*p++);
	res->bfree  = FUNC1(*p++);
	res->bavail = FUNC1(*p++);
	return 0;
}