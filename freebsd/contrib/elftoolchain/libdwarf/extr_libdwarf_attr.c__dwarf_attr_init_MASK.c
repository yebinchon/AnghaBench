#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_13__ {int bl_len; void* bl_data; } ;
struct _Dwarf_Attribute {int at_offset; int at_form; int at_indirect; TYPE_2__* u; TYPE_1__ at_block; int /*<<< orphan*/ * at_ld; int /*<<< orphan*/  at_attrib; int /*<<< orphan*/  at_die; } ;
typedef  int /*<<< orphan*/  atref ;
struct TYPE_18__ {int ad_form; int /*<<< orphan*/  ad_attrib; } ;
struct TYPE_17__ {int cu_pointer_size; int cu_version; } ;
struct TYPE_16__ {int (* read ) (int /*<<< orphan*/ ,int*,int) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  ds_data; int /*<<< orphan*/  ds_size; } ;
struct TYPE_14__ {int u64; int s; void* u8p; int /*<<< orphan*/  s64; } ;
typedef  TYPE_3__ Dwarf_Section ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  TYPE_4__* Dwarf_Debug ;
typedef  TYPE_5__* Dwarf_CU ;
typedef  TYPE_6__* Dwarf_AttrDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_ATTR_FORM_BAD ; 
 int DW_DLE_NONE ; 
#define  DW_FORM_addr 152 
#define  DW_FORM_block 151 
#define  DW_FORM_block1 150 
#define  DW_FORM_block2 149 
#define  DW_FORM_block4 148 
#define  DW_FORM_data1 147 
#define  DW_FORM_data2 146 
#define  DW_FORM_data4 145 
#define  DW_FORM_data8 144 
#define  DW_FORM_exprloc 143 
#define  DW_FORM_flag 142 
#define  DW_FORM_flag_present 141 
#define  DW_FORM_indirect 140 
#define  DW_FORM_ref1 139 
#define  DW_FORM_ref2 138 
#define  DW_FORM_ref4 137 
#define  DW_FORM_ref8 136 
#define  DW_FORM_ref_addr 135 
#define  DW_FORM_ref_sig8 134 
#define  DW_FORM_ref_udata 133 
#define  DW_FORM_sdata 132 
#define  DW_FORM_sec_offset 131 
#define  DW_FORM_string 130 
#define  DW_FORM_strp 129 
#define  DW_FORM_udata 128 
 int FUNC1 (int /*<<< orphan*/ ,struct _Dwarf_Attribute*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct _Dwarf_Attribute*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int*,int) ; 

int
FUNC20(Dwarf_Debug dbg, Dwarf_Section *ds, uint64_t *offsetp,
    int dwarf_size, Dwarf_CU cu, Dwarf_Die die, Dwarf_AttrDef ad,
    uint64_t form, int indirect, Dwarf_Error *error)
{
	struct _Dwarf_Attribute atref;
	int ret;

	ret = DW_DLE_NONE;
	FUNC7(&atref, 0, sizeof(atref));
	atref.at_die = die;
	atref.at_offset = *offsetp;
	atref.at_attrib = ad->ad_attrib;
	atref.at_form = indirect ? form : ad->ad_form;
	atref.at_indirect = indirect;
	atref.at_ld = NULL;

	switch (form) {
	case DW_FORM_addr:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
		    cu->cu_pointer_size);
		break;
	case DW_FORM_block:
	case DW_FORM_exprloc:
		atref.u[0].u64 = FUNC5(ds->ds_data, offsetp);
		atref.u[1].u8p = FUNC2(ds->ds_data, offsetp,
		    atref.u[0].u64);
		break;
	case DW_FORM_block1:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 1);
		atref.u[1].u8p = FUNC2(ds->ds_data, offsetp,
		    atref.u[0].u64);
		break;
	case DW_FORM_block2:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 2);
		atref.u[1].u8p = FUNC2(ds->ds_data, offsetp,
		    atref.u[0].u64);
		break;
	case DW_FORM_block4:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 4);
		atref.u[1].u8p = FUNC2(ds->ds_data, offsetp,
		    atref.u[0].u64);
		break;
	case DW_FORM_data1:
	case DW_FORM_flag:
	case DW_FORM_ref1:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 1);
		break;
	case DW_FORM_data2:
	case DW_FORM_ref2:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 2);
		break;
	case DW_FORM_data4:
	case DW_FORM_ref4:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 4);
		break;
	case DW_FORM_data8:
	case DW_FORM_ref8:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 8);
		break;
	case DW_FORM_indirect:
		form = FUNC5(ds->ds_data, offsetp);
		return (FUNC20(dbg, ds, offsetp, dwarf_size, cu, die,
		    ad, form, 1, error));
	case DW_FORM_ref_addr:
		if (cu->cu_version == 2)
			atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
			    cu->cu_pointer_size);
		else
			atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
			    dwarf_size);
		break;
	case DW_FORM_ref_udata:
	case DW_FORM_udata:
		atref.u[0].u64 = FUNC5(ds->ds_data, offsetp);
		break;
	case DW_FORM_sdata:
		atref.u[0].s64 = FUNC3(ds->ds_data, offsetp);
		break;
	case DW_FORM_sec_offset:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, dwarf_size);
		break;
	case DW_FORM_string:
		atref.u[0].s = FUNC4(ds->ds_data, ds->ds_size,
		    offsetp);
		break;
	case DW_FORM_strp:
		atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, dwarf_size);
		atref.u[1].s = FUNC6(dbg) + atref.u[0].u64;
		break;
	case DW_FORM_ref_sig8:
		atref.u[0].u64 = 8;
		atref.u[1].u8p = FUNC2(ds->ds_data, offsetp,
		    atref.u[0].u64);
		break;
	case DW_FORM_flag_present:
		/* This form has no value encoded in the DIE. */
		atref.u[0].u64 = 1;
		break;
	default:
		FUNC0(dbg, error, DW_DLE_ATTR_FORM_BAD);
		ret = DW_DLE_ATTR_FORM_BAD;
		break;
	}

	if (ret == DW_DLE_NONE) {
		if (form == DW_FORM_block || form == DW_FORM_block1 ||
		    form == DW_FORM_block2 || form == DW_FORM_block4) {
			atref.at_block.bl_len = atref.u[0].u64;
			atref.at_block.bl_data = atref.u[1].u8p;
		}
		ret = FUNC1(die, &atref, NULL, error);
	}

	return (ret);
}