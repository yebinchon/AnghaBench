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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tipc_msg*) ; 
 int FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 

__attribute__((used)) static inline u32 FUNC4(struct tipc_msg *m)
{
	if (FUNC0(FUNC3(m)))
		return 0;
	return(FUNC1(m) ^ FUNC2(m)) >> 11;
}