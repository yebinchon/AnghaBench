#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  at_form; TYPE_1__* u; int /*<<< orphan*/  at_attrib; TYPE_2__* at_die; } ;
struct TYPE_12__ {int /*<<< orphan*/  die_attr; } ;
struct TYPE_11__ {scalar_t__ u64; } ;
typedef  scalar_t__ Dwarf_Signed ;
typedef  TYPE_2__* Dwarf_P_Die ;
typedef  int /*<<< orphan*/ * Dwarf_P_Debug ;
typedef  TYPE_3__* Dwarf_P_Attribute ;
typedef  int /*<<< orphan*/  Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_3__* Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 scalar_t__ DW_DLE_NONE ; 
 TYPE_3__* DW_DLV_BADADDR ; 
 int /*<<< orphan*/  DW_FORM_data1 ; 
 int /*<<< orphan*/  DW_FORM_data2 ; 
 int /*<<< orphan*/  DW_FORM_data4 ; 
 int /*<<< orphan*/  DW_FORM_data8 ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ INT_MIN ; 
 scalar_t__ SCHAR_MAX ; 
 scalar_t__ SCHAR_MIN ; 
 scalar_t__ SHRT_MAX ; 
 scalar_t__ SHRT_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  at_next ; 

Dwarf_P_Attribute
FUNC3(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_Signed value, Dwarf_Error *error)
{
	Dwarf_Attribute at;

	if (dbg == NULL || die == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if (FUNC2(die, &at, error) != DW_DLE_NONE)
		return (DW_DLV_BADADDR);

	at->at_die = die;
	at->at_attrib = attr;
	at->u[0].u64 = value;

	if (value >= SCHAR_MIN && value <= SCHAR_MAX)
		at->at_form = DW_FORM_data1;
	else if (value >= SHRT_MIN && value <= SHRT_MAX)
		at->at_form = DW_FORM_data2;
	else if (value >= INT_MIN && value <= INT_MAX)
		at->at_form = DW_FORM_data4;
	else
		at->at_form = DW_FORM_data8;

	FUNC1(&die->die_attr, at, at_next);

	return (at);
}