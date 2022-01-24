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
struct TYPE_2__ {void* usr_handle; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 struct port* FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 

void *FUNC2(const u32 ref)
{
	struct port *p_ptr;
	void * handle;

	p_ptr = FUNC0(ref);
	if (!p_ptr)
		return NULL;
	handle = p_ptr->publ.usr_handle;
	FUNC1(p_ptr);
	return handle;
}