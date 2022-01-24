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
struct nfs_fsstat {int /*<<< orphan*/  afiles; int /*<<< orphan*/  ffiles; int /*<<< orphan*/  tfiles; int /*<<< orphan*/  abytes; int /*<<< orphan*/  fbytes; int /*<<< orphan*/  tbytes; int /*<<< orphan*/  fattr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs_fsstat *res)
{
	int		status;

	status = FUNC1(*p++);

	p = FUNC3(p, res->fattr);
	if (status != 0)
		return FUNC0(status);

	p = FUNC2(p, &res->tbytes);
	p = FUNC2(p, &res->fbytes);
	p = FUNC2(p, &res->abytes);
	p = FUNC2(p, &res->tfiles);
	p = FUNC2(p, &res->ffiles);
	p = FUNC2(p, &res->afiles);

	/* ignore invarsec */
	return 0;
}