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
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct nfs4_client {TYPE_1__ cl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nfs4_client*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs4_client* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfs4_client *FUNC4(struct xdr_netobj name)
{
	struct nfs4_client *clp;

	clp = FUNC2(sizeof(struct nfs4_client), GFP_KERNEL);
	if (clp == NULL)
		return NULL;
	clp->cl_name.data = FUNC1(name.len, GFP_KERNEL);
	if (clp->cl_name.data == NULL) {
		FUNC0(clp);
		return NULL;
	}
	FUNC3(clp->cl_name.data, name.data, name.len);
	clp->cl_name.len = name.len;
	return clp;
}