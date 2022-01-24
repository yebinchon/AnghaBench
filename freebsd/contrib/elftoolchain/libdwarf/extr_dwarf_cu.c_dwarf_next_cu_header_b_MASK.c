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
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC1(Dwarf_Debug dbg, Dwarf_Unsigned *cu_length,
    Dwarf_Half *cu_version, Dwarf_Off *cu_abbrev_offset,
    Dwarf_Half *cu_pointer_size, Dwarf_Half *cu_offset_size,
    Dwarf_Half *cu_extension_size, Dwarf_Unsigned *cu_next_offset,
    Dwarf_Error *error)
{

	return (FUNC0(dbg, 1, cu_length, cu_version,
	    cu_abbrev_offset, cu_pointer_size, cu_offset_size,
	    cu_extension_size, NULL, NULL, cu_next_offset, error));
}