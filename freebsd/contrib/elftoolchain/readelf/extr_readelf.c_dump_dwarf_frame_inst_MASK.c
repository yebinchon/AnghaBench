#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unk_op ;
typedef  char const* uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct readelf {int dummy; } ;
typedef  char const* intmax_t ;
struct TYPE_4__ {int fp_base_op; int fp_extended_op; int fp_offset; int fp_register; } ;
typedef  int Dwarf_Unsigned ;
typedef  int Dwarf_Small ;
typedef  int Dwarf_Signed ;
typedef  TYPE_1__ Dwarf_Frame_Op ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Cie ;
typedef  int Dwarf_Addr ;

/* Variables and functions */
#define  DW_CFA_advance_loc 141 
#define  DW_CFA_advance_loc1 140 
#define  DW_CFA_advance_loc2 139 
#define  DW_CFA_advance_loc4 138 
#define  DW_CFA_def_cfa 137 
#define  DW_CFA_def_cfa_offset 136 
#define  DW_CFA_def_cfa_offset_sf 135 
#define  DW_CFA_def_cfa_register 134 
#define  DW_CFA_def_cfa_sf 133 
#define  DW_CFA_offset 132 
#define  DW_CFA_offset_extended 131 
#define  DW_CFA_offset_extended_sf 130 
#define  DW_CFA_restore 129 
#define  DW_CFA_set_loc 128 
 int /*<<< orphan*/  DW_DLA_FRAME_BLOCK ; 
 scalar_t__ DW_DLV_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__**,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char const**) ; 
 char* FUNC4 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re, Dwarf_Cie cie, uint8_t *insts,
    Dwarf_Unsigned len, Dwarf_Unsigned caf, Dwarf_Signed daf, Dwarf_Addr pc,
    Dwarf_Debug dbg)
{
	Dwarf_Frame_Op *oplist;
	Dwarf_Signed opcnt, delta;
	Dwarf_Small op;
	Dwarf_Error de;
	const char *op_str;
	char unk_op[32];
	int i;

	if (FUNC2(cie, insts, len, &oplist,
	    &opcnt, &de) != DW_DLV_OK) {
		FUNC8("dwarf_expand_frame_instructions failed: %s",
		    FUNC1(de));
		return;
	}

	for (i = 0; i < opcnt; i++) {
		if (oplist[i].fp_base_op != 0)
			op = oplist[i].fp_base_op << 6;
		else
			op = oplist[i].fp_extended_op;
		if (FUNC3(op, &op_str) != DW_DLV_OK) {
			FUNC7(unk_op, sizeof(unk_op), "[Unknown CFA: %#x]",
			    op);
			op_str = unk_op;
		}
		FUNC5("  %s", op_str);
		switch (op) {
		case DW_CFA_advance_loc:
			delta = oplist[i].fp_offset * caf;
			pc += delta;
			FUNC5(": %ju to %08jx", (uintmax_t) delta,
			    (uintmax_t) pc);
			break;
		case DW_CFA_offset:
		case DW_CFA_offset_extended:
		case DW_CFA_offset_extended_sf:
			delta = oplist[i].fp_offset * daf;
			FUNC5(": r%u (%s) at cfa%+jd", oplist[i].fp_register,
			    FUNC4(re, oplist[i].fp_register),
			    (intmax_t) delta);
			break;
		case DW_CFA_restore:
			FUNC5(": r%u (%s)", oplist[i].fp_register,
			    FUNC4(re, oplist[i].fp_register));
			break;
		case DW_CFA_set_loc:
			pc = oplist[i].fp_offset;
			FUNC5(": to %08jx", (uintmax_t) pc);
			break;
		case DW_CFA_advance_loc1:
		case DW_CFA_advance_loc2:
		case DW_CFA_advance_loc4:
			pc += oplist[i].fp_offset;
			FUNC5(": %jd to %08jx", (intmax_t) oplist[i].fp_offset,
			    (uintmax_t) pc);
			break;
		case DW_CFA_def_cfa:
			FUNC5(": r%u (%s) ofs %ju", oplist[i].fp_register,
			    FUNC4(re, oplist[i].fp_register),
			    (uintmax_t) oplist[i].fp_offset);
			break;
		case DW_CFA_def_cfa_sf:
			FUNC5(": r%u (%s) ofs %jd", oplist[i].fp_register,
			    FUNC4(re, oplist[i].fp_register),
			    (intmax_t) (oplist[i].fp_offset * daf));
			break;
		case DW_CFA_def_cfa_register:
			FUNC5(": r%u (%s)", oplist[i].fp_register,
			    FUNC4(re, oplist[i].fp_register));
			break;
		case DW_CFA_def_cfa_offset:
			FUNC5(": %ju", (uintmax_t) oplist[i].fp_offset);
			break;
		case DW_CFA_def_cfa_offset_sf:
			FUNC5(": %jd", (intmax_t) (oplist[i].fp_offset * daf));
			break;
		default:
			break;
		}
		FUNC6('\n');
	}

	FUNC0(dbg, oplist, DW_DLA_FRAME_BLOCK);
}