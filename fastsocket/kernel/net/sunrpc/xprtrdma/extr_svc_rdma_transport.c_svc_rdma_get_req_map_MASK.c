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
struct svc_rdma_req_map {int /*<<< orphan*/ * frmr; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct svc_rdma_req_map* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rdma_map_cachep ; 

struct svc_rdma_req_map *FUNC3(void)
{
	struct svc_rdma_req_map *map;
	while (1) {
		map = FUNC0(svc_rdma_map_cachep, GFP_KERNEL);
		if (map)
			break;
		FUNC2(FUNC1(500));
	}
	map->count = 0;
	map->frmr = NULL;
	return map;
}