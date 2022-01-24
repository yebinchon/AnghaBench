#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unk_tag ;
typedef  int /*<<< orphan*/  unk_attr ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint8_t ;
struct readelf {int /*<<< orphan*/  dbg; scalar_t__ (* dw_decode ) (int**,int) ;} ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_6__ {int* bl_data; scalar_t__ bl_len; } ;
struct TYPE_5__ {int /*<<< orphan*/ * signature; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  TYPE_1__ Dwarf_Sig8 ;
typedef  int* Dwarf_Ptr ;
typedef  scalar_t__ Dwarf_Off ;
typedef  int Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Bool ;
typedef  TYPE_2__ Dwarf_Block ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
#define  DW_AT_data_member_location 162 
#define  DW_AT_encoding 161 
#define  DW_AT_frame_base 160 
 int DW_AT_high_pc ; 
#define  DW_AT_language 159 
#define  DW_AT_location 158 
#define  DW_AT_return_addr 157 
#define  DW_AT_segment 156 
#define  DW_AT_static_link 155 
#define  DW_AT_string_length 154 
#define  DW_AT_use_location 153 
#define  DW_AT_vtable_elem_location 152 
 int /*<<< orphan*/  DW_DLA_DIE ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
#define  DW_FORM_addr 151 
#define  DW_FORM_block 150 
#define  DW_FORM_block1 149 
#define  DW_FORM_block2 148 
#define  DW_FORM_block4 147 
#define  DW_FORM_data1 146 
#define  DW_FORM_data2 145 
#define  DW_FORM_data4 144 
#define  DW_FORM_data8 143 
#define  DW_FORM_exprloc 142 
#define  DW_FORM_flag 141 
#define  DW_FORM_flag_present 140 
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
 int /*<<< orphan*/  FUNC0 (struct readelf*,int*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int**,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (scalar_t__,char const**) ; 
 int FUNC20 (int,char const**) ; 
 int FUNC21 (scalar_t__,char const**) ; 
 int FUNC22 (int,char const**) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  FUNC30 (char) ; 
 int /*<<< orphan*/  FUNC31 (char*,int,char*,int) ; 
 size_t FUNC32 (char*) ; 
 scalar_t__ FUNC33 (int**,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC35(struct readelf *re, Dwarf_Die die, int level)
{
	Dwarf_Attribute *attr_list;
	Dwarf_Die ret_die;
	Dwarf_Off dieoff, cuoff, culen, attroff;
	Dwarf_Unsigned ate, lang, v_udata, v_sig;
	Dwarf_Signed attr_count, v_sdata;
	Dwarf_Off v_off;
	Dwarf_Addr v_addr;
	Dwarf_Half tag, attr, form;
	Dwarf_Block *v_block;
	Dwarf_Bool v_bool, is_info;
	Dwarf_Sig8 v_sig8;
	Dwarf_Error de;
	Dwarf_Ptr v_expr;
	const char *tag_str, *attr_str, *ate_str, *lang_str;
	char unk_tag[32], unk_attr[32];
	char *v_str;
	uint8_t *b, *p;
	int i, j, abc, ret;

	if (FUNC8(die, &dieoff, &de) != DW_DLV_OK) {
		FUNC34("dwarf_dieoffset failed: %s", FUNC9(de));
		goto cont_search;
	}

	FUNC29(" <%d><%jx>: ", level, (uintmax_t) dieoff);

	if (FUNC6(die, &cuoff, &culen, &de) != DW_DLV_OK) {
		FUNC34("dwarf_die_CU_offset_range failed: %s",
		      FUNC9(de));
		cuoff = 0;
	}

	abc = FUNC7(die);
	if (FUNC26(die, &tag, &de) != DW_DLV_OK) {
		FUNC34("dwarf_tag failed: %s", FUNC9(de));
		goto cont_search;
	}
	if (FUNC22(tag, &tag_str) != DW_DLV_OK) {
		FUNC31(unk_tag, sizeof(unk_tag), "[Unknown Tag: %#x]", tag);
		tag_str = unk_tag;
	}

	FUNC29("Abbrev Number: %d (%s)\n", abc, tag_str);

	if ((ret = FUNC1(die, &attr_list, &attr_count, &de)) !=
	    DW_DLV_OK) {
		if (ret == DW_DLV_ERROR)
			FUNC34("dwarf_attrlist failed: %s", FUNC9(de));
		goto cont_search;
	}

	for (i = 0; i < attr_count; i++) {
		if (FUNC28(attr_list[i], &form, &de) != DW_DLV_OK) {
			FUNC34("dwarf_whatform failed: %s", FUNC9(de));
			continue;
		}
		if (FUNC27(attr_list[i], &attr, &de) != DW_DLV_OK) {
			FUNC34("dwarf_whatattr failed: %s", FUNC9(de));
			continue;
		}
		if (FUNC20(attr, &attr_str) != DW_DLV_OK) {
			FUNC31(unk_attr, sizeof(unk_attr),
			    "[Unknown AT: %#x]", attr);
			attr_str = unk_attr;
		}
		if (FUNC2(attr_list[i], &attroff, &de) !=
		    DW_DLV_OK) {
			FUNC34("dwarf_attroffset failed: %s", FUNC9(de));
			attroff = 0;
		}
		FUNC29("    <%jx>   %-18s: ", (uintmax_t) attroff, attr_str);
		switch (form) {
		case DW_FORM_ref_addr:
		case DW_FORM_sec_offset:
			if (FUNC24(attr_list[i], &v_off, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_global_formref failed: %s",
				    FUNC9(de));
				continue;
			}
			if (form == DW_FORM_ref_addr)
				FUNC29("<0x%jx>", (uintmax_t) v_off);
			else
				FUNC29("0x%jx", (uintmax_t) v_off);
			break;

		case DW_FORM_ref1:
		case DW_FORM_ref2:
		case DW_FORM_ref4:
		case DW_FORM_ref8:
		case DW_FORM_ref_udata:
			if (FUNC14(attr_list[i], &v_off, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formref failed: %s",
				    FUNC9(de));
				continue;
			}
			v_off += cuoff;
			FUNC29("<0x%jx>", (uintmax_t) v_off);
			break;

		case DW_FORM_addr:
			if (FUNC10(attr_list[i], &v_addr, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formaddr failed: %s",
				    FUNC9(de));
				continue;
			}
			FUNC29("%#jx", (uintmax_t) v_addr);
			break;

		case DW_FORM_data1:
		case DW_FORM_data2:
		case DW_FORM_data4:
		case DW_FORM_data8:
		case DW_FORM_udata:
			if (FUNC18(attr_list[i], &v_udata, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formudata failed: %s",
				    FUNC9(de));
				continue;
			}
			if (attr == DW_AT_high_pc)
				FUNC29("0x%jx", (uintmax_t) v_udata);
			else
				FUNC29("%ju", (uintmax_t) v_udata);
			break;

		case DW_FORM_sdata:
			if (FUNC15(attr_list[i], &v_sdata, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formudata failed: %s",
				    FUNC9(de));
				continue;
			}
			FUNC29("%jd", (intmax_t) v_sdata);
			break;

		case DW_FORM_flag:
			if (FUNC13(attr_list[i], &v_bool, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formflag failed: %s",
				    FUNC9(de));
				continue;
			}
			FUNC29("%jd", (intmax_t) v_bool);
			break;

		case DW_FORM_flag_present:
			FUNC30('1');
			break;

		case DW_FORM_string:
		case DW_FORM_strp:
			if (FUNC17(attr_list[i], &v_str, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formstring failed: %s",
				    FUNC9(de));
				continue;
			}
			if (form == DW_FORM_string)
				FUNC29("%s", v_str);
			else
				FUNC29("(indirect string) %s", v_str);
			break;

		case DW_FORM_block:
		case DW_FORM_block1:
		case DW_FORM_block2:
		case DW_FORM_block4:
			if (FUNC11(attr_list[i], &v_block, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formblock failed: %s",
				    FUNC9(de));
				continue;
			}
			FUNC29("%ju byte block:", (uintmax_t) v_block->bl_len);
			b = v_block->bl_data;
			for (j = 0; (Dwarf_Unsigned) j < v_block->bl_len; j++)
				FUNC29(" %x", b[j]);
			FUNC29("\t(");
			FUNC0(re, v_block->bl_data, v_block->bl_len);
			FUNC30(')');
			break;

		case DW_FORM_exprloc:
			if (FUNC12(attr_list[i], &v_udata, &v_expr,
			    &de) != DW_DLV_OK) {
				FUNC34("dwarf_formexprloc failed: %s",
				    FUNC9(de));
				continue;
			}
			FUNC29("%ju byte block:", (uintmax_t) v_udata);
			b = v_expr;
			for (j = 0; (Dwarf_Unsigned) j < v_udata; j++)
				FUNC29(" %x", b[j]);
			FUNC29("\t(");
			FUNC0(re, v_expr, v_udata);
			FUNC30(')');
			break;

		case DW_FORM_ref_sig8:
			if (FUNC16(attr_list[i], &v_sig8, &de) !=
			    DW_DLV_OK) {
				FUNC34("dwarf_formsig8 failed: %s",
				    FUNC9(de));
				continue;
			}
			p = (uint8_t *)(uintptr_t) &v_sig8.signature[0];
			v_sig = re->dw_decode(&p, 8);
			FUNC29("signature: 0x%jx", (uintmax_t) v_sig);
		}
		switch (attr) {
		case DW_AT_encoding:
			if (FUNC3(die, attr, &ate, &de) !=
			    DW_DLV_OK)
				break;
			if (FUNC19(ate, &ate_str) != DW_DLV_OK)
				ate_str = "DW_ATE_UNKNOWN";
			FUNC29("\t(%s)", &ate_str[FUNC32("DW_ATE_")]);
			break;

		case DW_AT_language:
			if (FUNC3(die, attr, &lang, &de) !=
			    DW_DLV_OK)
				break;
			if (FUNC21(lang, &lang_str) != DW_DLV_OK)
				break;
			FUNC29("\t(%s)", &lang_str[FUNC32("DW_LANG_")]);
			break;

		case DW_AT_location:
		case DW_AT_string_length:
		case DW_AT_return_addr:
		case DW_AT_data_member_location:
		case DW_AT_frame_base:
		case DW_AT_segment:
		case DW_AT_static_link:
		case DW_AT_use_location:
		case DW_AT_vtable_elem_location:
			switch (form) {
			case DW_FORM_data4:
			case DW_FORM_data8:
			case DW_FORM_sec_offset:
				FUNC29("\t(location list)");
				break;
			default:
				break;
			}

		default:
			break;
		}
		FUNC30('\n');
	}


cont_search:
	/* Search children. */
	ret = FUNC4(die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC34("dwarf_child: %s", FUNC9(de));
	else if (ret == DW_DLV_OK)
		FUNC35(re, ret_die, level + 1);

	/* Search sibling. */
	is_info = FUNC23(die);
	ret = FUNC25(re->dbg, die, &ret_die, is_info, &de);
	if (ret == DW_DLV_ERROR)
		FUNC34("dwarf_siblingof: %s", FUNC9(de));
	else if (ret == DW_DLV_OK)
		FUNC35(re, ret_die, level);

	FUNC5(re->dbg, die, DW_DLA_DIE);
}