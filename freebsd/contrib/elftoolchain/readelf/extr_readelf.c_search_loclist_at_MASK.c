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
struct readelf {int /*<<< orphan*/  dbg; int /*<<< orphan*/  cu_ver; int /*<<< orphan*/  cu_osize; int /*<<< orphan*/  cu_psize; } ;
struct loc_at {int /*<<< orphan*/  la_cu_ver; int /*<<< orphan*/  la_cu_osize; int /*<<< orphan*/  la_cu_psize; void* la_lowpc; void* la_off; int /*<<< orphan*/  la_at; } ;
typedef  void* Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  void* Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Bool ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 scalar_t__ DW_AT_data_member_location ; 
 scalar_t__ DW_AT_frame_base ; 
 scalar_t__ DW_AT_location ; 
 scalar_t__ DW_AT_return_addr ; 
 scalar_t__ DW_AT_segment ; 
 scalar_t__ DW_AT_static_link ; 
 scalar_t__ DW_AT_string_length ; 
 scalar_t__ DW_AT_use_location ; 
 scalar_t__ DW_AT_vtable_elem_location ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_FORM_data4 ; 
 scalar_t__ DW_FORM_data8 ; 
 scalar_t__ DW_FORM_sec_offset ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct loc_at* FUNC10 (struct loc_at*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct readelf *re, Dwarf_Die die, Dwarf_Unsigned lowpc,
    struct loc_at **la_list, size_t *la_list_len, size_t *la_list_cap)
{
	struct loc_at *la;
	Dwarf_Attribute *attr_list;
	Dwarf_Die ret_die;
	Dwarf_Unsigned off;
	Dwarf_Off ref;
	Dwarf_Signed attr_count;
	Dwarf_Half attr, form;
	Dwarf_Bool is_info;
	Dwarf_Error de;
	int i, ret;

	is_info = FUNC4(die);

	if ((ret = FUNC0(die, &attr_list, &attr_count, &de)) !=
	    DW_DLV_OK) {
		if (ret == DW_DLV_ERROR)
			FUNC11("dwarf_attrlist failed: %s", FUNC2(de));
		goto cont_search;
	}
	for (i = 0; i < attr_count; i++) {
		if (FUNC7(attr_list[i], &attr, &de) != DW_DLV_OK) {
			FUNC11("dwarf_whatattr failed: %s", FUNC2(de));
			continue;
		}
		if (attr != DW_AT_location &&
		    attr != DW_AT_string_length &&
		    attr != DW_AT_return_addr &&
		    attr != DW_AT_data_member_location &&
		    attr != DW_AT_frame_base &&
		    attr != DW_AT_segment &&
		    attr != DW_AT_static_link &&
		    attr != DW_AT_use_location &&
		    attr != DW_AT_vtable_elem_location)
			continue;
		if (FUNC8(attr_list[i], &form, &de) != DW_DLV_OK) {
			FUNC11("dwarf_whatform failed: %s", FUNC2(de));
			continue;
		}
		if (form == DW_FORM_data4 || form == DW_FORM_data8) {
			if (FUNC3(attr_list[i], &off, &de) !=
			    DW_DLV_OK) {
				FUNC11("dwarf_formudata failed: %s",
				    FUNC2(de));
				continue;
			}
		} else if (form == DW_FORM_sec_offset) {
			if (FUNC5(attr_list[i], &ref, &de) !=
			    DW_DLV_OK) {
				FUNC11("dwarf_global_formref failed: %s",
				    FUNC2(de));
				continue;
			}
			off = ref;
		} else
			continue;

		if (*la_list_cap == *la_list_len) {
			*la_list = FUNC10(*la_list,
			    *la_list_cap * 2 * sizeof(**la_list));
			if (la_list == NULL)
				FUNC9(EXIT_FAILURE, "realloc failed");
			*la_list_cap *= 2;
		}
		la = &((*la_list)[*la_list_len]);
		la->la_at = attr_list[i];
		la->la_off = off;
		la->la_lowpc = lowpc;
		la->la_cu_psize = re->cu_psize;
		la->la_cu_osize = re->cu_osize;
		la->la_cu_ver = re->cu_ver;
		(*la_list_len)++;
	}

cont_search:
	/* Search children. */
	ret = FUNC1(die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC11("dwarf_child: %s", FUNC2(de));
	else if (ret == DW_DLV_OK)
		FUNC12(re, ret_die, lowpc, la_list,
		    la_list_len, la_list_cap);

	/* Search sibling. */
	ret = FUNC6(re->dbg, die, &ret_die, is_info, &de);
	if (ret == DW_DLV_ERROR)
		FUNC11("dwarf_siblingof: %s", FUNC2(de));
	else if (ret == DW_DLV_OK)
		FUNC12(re, ret_die, lowpc, la_list,
		    la_list_len, la_list_cap);
}