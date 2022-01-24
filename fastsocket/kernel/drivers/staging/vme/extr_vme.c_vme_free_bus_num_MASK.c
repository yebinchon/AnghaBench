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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vme_bus_num_mtx ; 
 int vme_bus_numbers ; 

__attribute__((used)) static void FUNC2(int bus)
{
	FUNC0(&vme_bus_num_mtx);
	vme_bus_numbers |= ~(0x1 << bus);
	FUNC1(&vme_bus_num_mtx);
}