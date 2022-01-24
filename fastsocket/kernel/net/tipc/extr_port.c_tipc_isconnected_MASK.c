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
struct TYPE_2__ {int connected; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 struct port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 

int FUNC2(u32 ref, int *isconnected)
{
	struct port *p_ptr;

	p_ptr = FUNC0(ref);
	if (!p_ptr)
		return -EINVAL;
	*isconnected = p_ptr->publ.connected;
	FUNC1(p_ptr);
	return 0;
}