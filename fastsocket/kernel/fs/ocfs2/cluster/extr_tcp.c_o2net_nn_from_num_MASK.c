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
typedef  size_t u8 ;
struct o2net_node {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct o2net_node*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct o2net_node* o2net_nodes ; 

__attribute__((used)) static struct o2net_node * FUNC2(u8 node_num)
{
	FUNC1(node_num >= FUNC0(o2net_nodes));
	return &o2net_nodes[node_num];
}