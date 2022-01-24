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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tipc_node** tipc_local_nodes ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 struct tipc_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct tipc_node *FUNC4(u32 addr, u32 selector)
{
	if (FUNC1(FUNC0(addr)))
		return tipc_local_nodes[FUNC2(addr)];
	return FUNC3(addr, selector);
}