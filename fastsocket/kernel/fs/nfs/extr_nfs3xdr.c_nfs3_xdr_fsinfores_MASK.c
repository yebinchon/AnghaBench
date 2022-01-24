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
struct nfs_fsinfo {scalar_t__ lease_time; int /*<<< orphan*/  time_delta; int /*<<< orphan*/  maxfilesize; void* dtpref; void* wtmult; void* wtpref; void* wtmax; void* rtmult; void* rtpref; void* rtmax; int /*<<< orphan*/  fattr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct rpc_rqst *req, __be32 *p, struct nfs_fsinfo *res)
{
	int		status;

	status = FUNC1(*p++);

	p = FUNC3(p, res->fattr);
	if (status != 0)
		return FUNC0(status);

	res->rtmax  = FUNC1(*p++);
	res->rtpref = FUNC1(*p++);
	res->rtmult = FUNC1(*p++);
	res->wtmax  = FUNC1(*p++);
	res->wtpref = FUNC1(*p++);
	res->wtmult = FUNC1(*p++);
	res->dtpref = FUNC1(*p++);
	p = FUNC2(p, &res->maxfilesize);
	p = FUNC4(p, &res->time_delta);

	/* ignore properties */
	res->lease_time = 0;
	return 0;
}