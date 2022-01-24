#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ reserved; TYPE_1__ memory; scalar_t__ rmo_size; } ;

/* Variables and functions */
 TYPE_2__ lmb ; 
 int /*<<< orphan*/  lmb_debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(void)
{
	if (!lmb_debug)
		return;

	FUNC1("LMB configuration:\n");
	FUNC1(" rmo_size    = 0x%llx\n", (unsigned long long)lmb.rmo_size);
	FUNC1(" memory.size = 0x%llx\n", (unsigned long long)lmb.memory.size);

	FUNC0(&lmb.memory, "memory");
	FUNC0(&lmb.reserved, "reserved");
}