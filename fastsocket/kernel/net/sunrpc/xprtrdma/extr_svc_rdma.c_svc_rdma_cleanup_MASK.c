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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rdma_class ; 
 int /*<<< orphan*/  svc_rdma_ctxt_cachep ; 
 int /*<<< orphan*/  svc_rdma_map_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * svcrdma_table_header ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	FUNC0("SVCRDMA Module Removed, deregister RPC RDMA transport\n");
	FUNC1();
	if (svcrdma_table_header) {
		FUNC4(svcrdma_table_header);
		svcrdma_table_header = NULL;
	}
	FUNC3(&svc_rdma_class);
	FUNC2(svc_rdma_map_cachep);
	FUNC2(svc_rdma_ctxt_cachep);
}