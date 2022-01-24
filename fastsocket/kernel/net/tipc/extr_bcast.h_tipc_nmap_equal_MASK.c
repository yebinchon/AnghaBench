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
struct tipc_node_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_node_map*,struct tipc_node_map*,int) ; 

__attribute__((used)) static inline int FUNC1(struct tipc_node_map *nm_a, struct tipc_node_map *nm_b)
{
	return !FUNC0(nm_a, nm_b, sizeof(*nm_a));
}