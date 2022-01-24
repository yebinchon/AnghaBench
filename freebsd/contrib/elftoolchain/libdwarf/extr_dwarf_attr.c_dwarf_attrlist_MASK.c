#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ ** die_attrarray; int /*<<< orphan*/  die_attr; TYPE_1__* die_ab; int /*<<< orphan*/ * die_dbg; } ;
struct TYPE_4__ {scalar_t__ ab_atnum; } ;
typedef  int Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_2__* Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;
typedef  int /*<<< orphan*/ * Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 int /*<<< orphan*/  DW_DLE_NO_ENTRY ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at_next ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 

int
FUNC4(Dwarf_Die die, Dwarf_Attribute **attrbuf,
    Dwarf_Signed *attrcount, Dwarf_Error *error)
{
	Dwarf_Attribute at;
	Dwarf_Debug dbg;
	int i;

	dbg = die != NULL ? die->die_dbg : NULL;

	if (die == NULL || attrbuf == NULL || attrcount == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	if (die->die_ab->ab_atnum == 0) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	*attrcount = die->die_ab->ab_atnum;

	if (die->die_attrarray != NULL) {
		*attrbuf = die->die_attrarray;
		return (DW_DLV_OK);
	}

	if ((die->die_attrarray = FUNC3(*attrcount * sizeof(Dwarf_Attribute)))
	    == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLV_ERROR);
	}

	for (i = 0, at = FUNC1(&die->die_attr);
	     i < *attrcount && at != NULL; i++, at = FUNC2(at, at_next))
		die->die_attrarray[i] = at;

	*attrbuf = die->die_attrarray;

	return (DW_DLV_OK);
}