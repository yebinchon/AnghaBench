#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct _Dwarf_AttrDef {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ab_atnum; int /*<<< orphan*/  ab_attrdef; } ;
struct TYPE_7__ {void* ad_offset; void* ad_form; void* ad_attrib; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  TYPE_1__* Dwarf_AttrDef ;
typedef  TYPE_2__* Dwarf_Abbrev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_ARGUMENT ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad_next ; 
 TYPE_1__* FUNC2 (int) ; 

int
FUNC3(Dwarf_Debug dbg, Dwarf_Abbrev ab, uint64_t attr,
    uint64_t form, uint64_t adoff, Dwarf_AttrDef *adp, Dwarf_Error *error)
{
	Dwarf_AttrDef ad;

	if (ab == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLE_ARGUMENT);
	}

	if ((ad = FUNC2(sizeof(struct _Dwarf_AttrDef))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	/* Initialise the attribute definition structure. */
	ad->ad_attrib	= attr;
	ad->ad_form	= form;
	ad->ad_offset	= adoff;

	/* Add the attribute definition to the list in the abbrev. */
	FUNC1(&ab->ab_attrdef, ad, ad_next);

	/* Increase number of attribute counter. */
	ab->ab_atnum++;

	if (adp != NULL)
		*adp = ad;

	return (DW_DLE_NONE);
}