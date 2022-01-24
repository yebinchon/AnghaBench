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
struct nfs3_diropres {int /*<<< orphan*/  dir_attr; int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int errno_NFSERR_IO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs3_diropres *res)
{
	int	status;

	if ((status = FUNC1(*p++))) {
		status = FUNC0(status);
	} else {
		if (!(p = FUNC2(p, res->fh)))
			return -errno_NFSERR_IO;
		p = FUNC3(p, res->fattr);
	}
	FUNC3(p, res->dir_attr);
	return status;
}