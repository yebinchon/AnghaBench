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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FIRST_FRAGMENT ; 
 scalar_t__ MSG_FRAGMENTER ; 
 scalar_t__ FUNC0 (int) ; 
 struct tipc_msg* FUNC1 (struct tipc_msg*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 scalar_t__ tipc_own_addr ; 

__attribute__((used)) static inline u32 FUNC7(struct tipc_msg *m)
{
	if (FUNC0(FUNC3(m))) {
		if (FUNC0(FUNC4(m) == tipc_own_addr))
			return FUNC2(m);
		return FUNC2(m) + 4;
	}
	if ((FUNC6(m) == MSG_FRAGMENTER)  &&
	    (FUNC5(m) == FIRST_FRAGMENT))
		return FUNC2(FUNC1(m));
	return FUNC2(m);
}