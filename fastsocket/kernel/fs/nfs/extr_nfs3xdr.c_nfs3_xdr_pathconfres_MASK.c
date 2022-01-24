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
struct nfs_pathconf {void* max_namelen; void* max_link; int /*<<< orphan*/  fattr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rpc_rqst *req, __be32 *p, struct nfs_pathconf *res)
{
	int		status;

	status = FUNC1(*p++);

	p = FUNC2(p, res->fattr);
	if (status != 0)
		return FUNC0(status);
	res->max_link = FUNC1(*p++);
	res->max_namelen = FUNC1(*p++);

	/* ignore remaining fields */
	return 0;
}