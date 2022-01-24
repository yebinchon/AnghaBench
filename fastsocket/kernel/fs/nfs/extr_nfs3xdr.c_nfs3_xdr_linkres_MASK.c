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
struct nfs3_linkres {int /*<<< orphan*/  dir_attr; int /*<<< orphan*/  fattr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs3_linkres *res)
{
	int	status;

	if ((status = FUNC1(*p++)) != 0)
		status = FUNC0(status);
	p = FUNC2(p, res->fattr);
	p = FUNC3(p, res->dir_attr);
	return status;
}