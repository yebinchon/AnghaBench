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
typedef  int /*<<< orphan*/  Dwarf_P_Die ;
typedef  int /*<<< orphan*/  Dwarf_P_Attribute ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_producer ; 
 scalar_t__ DW_DLE_NONE ; 
 int /*<<< orphan*/  DW_DLV_BADADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

Dwarf_P_Attribute
FUNC1(Dwarf_P_Die die, char *producer, Dwarf_Error *error)
{
	Dwarf_Attribute at;

	if (FUNC0(die, &at, DW_AT_producer, producer, error) !=
	    DW_DLE_NONE)
		return (DW_DLV_BADADDR);

	return (at);
}