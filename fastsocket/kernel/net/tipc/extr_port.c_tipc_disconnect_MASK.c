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
struct tipc_port {int dummy; } ;
struct port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct tipc_port*) ; 
 struct port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 

int FUNC3(u32 ref)
{
	struct port *p_ptr;
	int res;

	p_ptr = FUNC1(ref);
	if (!p_ptr)
		return -EINVAL;
	res = FUNC0((struct tipc_port *)p_ptr);
	FUNC2(p_ptr);
	return res;
}