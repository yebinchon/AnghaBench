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
struct TYPE_2__ {int /*<<< orphan*/  phdr; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 

int FUNC3(u32 ref, unsigned int *importance)
{
	struct port *p_ptr;

	p_ptr = FUNC1(ref);
	if (!p_ptr)
		return -EINVAL;
	*importance = (unsigned int)FUNC0(&p_ptr->publ.phdr);
	FUNC2(p_ptr);
	return 0;
}