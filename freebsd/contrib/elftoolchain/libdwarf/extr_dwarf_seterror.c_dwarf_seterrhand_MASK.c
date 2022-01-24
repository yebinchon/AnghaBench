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
typedef  int /*<<< orphan*/  Dwarf_Handler ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Dwarf_Handler
FUNC1(Dwarf_Debug dbg, Dwarf_Handler errhand)
{
	Dwarf_Handler oldhandler;

	FUNC0(dbg, oldhandler, errhand);

	return (oldhandler);
}