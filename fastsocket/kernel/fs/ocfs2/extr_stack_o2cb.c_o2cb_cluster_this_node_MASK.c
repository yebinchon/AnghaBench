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
 int ENOENT ; 
 int EOVERFLOW ; 
 int O2NM_INVALID_NODE_NUM ; 
 int O2NM_MAX_NODES ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(unsigned int *node)
{
	int node_num;

	node_num = FUNC0();
	if (node_num == O2NM_INVALID_NODE_NUM)
		return -ENOENT;

	if (node_num >= O2NM_MAX_NODES)
		return -EOVERFLOW;

	*node = node_num;
	return 0;
}