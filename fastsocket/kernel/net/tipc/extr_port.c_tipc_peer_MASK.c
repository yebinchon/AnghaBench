#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_portid {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct TYPE_2__ {scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 struct port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 

int FUNC4(u32 ref, struct tipc_portid *peer)
{
	struct port *p_ptr;
	int res;

	p_ptr = FUNC2(ref);
	if (!p_ptr)
		return -EINVAL;
	if (p_ptr->publ.connected) {
		peer->ref = FUNC1(p_ptr);
		peer->node = FUNC0(p_ptr);
		res = 0;
	} else
		res = -ENOTCONN;
	FUNC3(p_ptr);
	return res;
}