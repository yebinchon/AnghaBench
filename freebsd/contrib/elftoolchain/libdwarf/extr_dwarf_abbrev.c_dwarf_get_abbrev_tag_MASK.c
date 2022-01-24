#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ab_tag; } ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Abbrev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 

int
FUNC1(Dwarf_Abbrev abbrev, Dwarf_Half *return_tag,
    Dwarf_Error *error)
{

	if (abbrev == NULL || return_tag == NULL) {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	*return_tag = (Dwarf_Half) abbrev->ab_tag;

	return (DW_DLV_OK);
}