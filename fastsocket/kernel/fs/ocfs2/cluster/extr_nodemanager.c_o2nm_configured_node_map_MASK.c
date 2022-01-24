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
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_nodes_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 struct o2nm_cluster* o2nm_single_cluster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(unsigned long *map, unsigned bytes)
{
	struct o2nm_cluster *cluster = o2nm_single_cluster;

	FUNC0(bytes < (sizeof(cluster->cl_nodes_bitmap)));

	if (cluster == NULL)
		return -EINVAL;

	FUNC2(&cluster->cl_nodes_lock);
	FUNC1(map, cluster->cl_nodes_bitmap, sizeof(cluster->cl_nodes_bitmap));
	FUNC3(&cluster->cl_nodes_lock);

	return 0;
}