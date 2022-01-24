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
struct rpc_rqst {int dummy; } ;
struct nfs_commitres {TYPE_1__* verf; int /*<<< orphan*/  fattr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/ * verifier; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rpc_rqst *req, __be32 *p, struct nfs_commitres *res)
{
	int		status;

	status = FUNC1(*p++);
	p = FUNC2(p, res->fattr);
	if (status != 0)
		return FUNC0(status);

	res->verf->verifier[0] = *p++;
	res->verf->verifier[1] = *p++;
	return 0;
}