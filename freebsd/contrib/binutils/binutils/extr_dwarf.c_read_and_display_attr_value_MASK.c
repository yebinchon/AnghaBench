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
typedef  int /*<<< orphan*/  uvalue ;
struct TYPE_3__ {unsigned int max_loc_offsets; unsigned int num_loc_offsets; int* loc_offsets; int* have_frame_base; unsigned long base_address; unsigned int max_range_lists; unsigned int num_range_lists; int* range_lists; } ;
typedef  TYPE_1__ debug_info ;

/* Variables and functions */
#define  DW_ACCESS_private 222 
#define  DW_ACCESS_protected 221 
#define  DW_ACCESS_public 220 
#define  DW_ATE_address 219 
#define  DW_ATE_boolean 218 
#define  DW_ATE_complex_float 217 
#define  DW_ATE_decimal_float 216 
#define  DW_ATE_float 215 
 unsigned long DW_ATE_hi_user ; 
#define  DW_ATE_imaginary_float 214 
 unsigned long DW_ATE_lo_user ; 
#define  DW_ATE_signed 213 
#define  DW_ATE_signed_char 212 
#define  DW_ATE_unsigned 211 
#define  DW_ATE_unsigned_char 210 
#define  DW_ATE_void 209 
#define  DW_AT_accessibility 208 
#define  DW_AT_allocated 207 
#define  DW_AT_associated 206 
#define  DW_AT_calling_convention 205 
#define  DW_AT_data_location 204 
#define  DW_AT_data_member_location 203 
#define  DW_AT_encoding 202 
#define  DW_AT_frame_base 201 
#define  DW_AT_identifier_case 200 
#define  DW_AT_inline 199 
#define  DW_AT_language 198 
#define  DW_AT_location 197 
#define  DW_AT_low_pc 196 
#define  DW_AT_lower_bound 195 
#define  DW_AT_ordering 194 
#define  DW_AT_ranges 193 
#define  DW_AT_stride 192 
#define  DW_AT_upper_bound 191 
#define  DW_AT_virtuality 190 
#define  DW_AT_visibility 189 
#define  DW_AT_vtable_elem_location 188 
 unsigned long DW_CC_hi_user ; 
 unsigned long DW_CC_lo_user ; 
#define  DW_CC_nocall 187 
#define  DW_CC_normal 186 
#define  DW_CC_program 185 
#define  DW_FORM_addr 184 
#define  DW_FORM_block 183 
#define  DW_FORM_block1 182 
#define  DW_FORM_block2 181 
#define  DW_FORM_block4 180 
#define  DW_FORM_data1 179 
#define  DW_FORM_data2 178 
#define  DW_FORM_data4 177 
#define  DW_FORM_data8 176 
#define  DW_FORM_flag 175 
#define  DW_FORM_flag_present 174 
#define  DW_FORM_indirect 173 
#define  DW_FORM_ref1 172 
#define  DW_FORM_ref2 171 
#define  DW_FORM_ref4 170 
#define  DW_FORM_ref8 169 
#define  DW_FORM_ref_addr 168 
#define  DW_FORM_ref_udata 167 
#define  DW_FORM_sdata 166 
#define  DW_FORM_string 165 
#define  DW_FORM_strp 164 
#define  DW_FORM_udata 163 
#define  DW_ID_case_insensitive 162 
#define  DW_ID_case_sensitive 161 
#define  DW_ID_down_case 160 
#define  DW_ID_up_case 159 
#define  DW_INL_declared_inlined 158 
#define  DW_INL_declared_not_inlined 157 
#define  DW_INL_inlined 156 
#define  DW_INL_not_inlined 155 
#define  DW_LANG_Ada83 154 
#define  DW_LANG_Ada95 153 
#define  DW_LANG_C 152 
#define  DW_LANG_C89 151 
#define  DW_LANG_C99 150 
#define  DW_LANG_C_plus_plus 149 
#define  DW_LANG_Cobol74 148 
#define  DW_LANG_Cobol85 147 
#define  DW_LANG_D 146 
#define  DW_LANG_Fortran77 145 
#define  DW_LANG_Fortran90 144 
#define  DW_LANG_Fortran95 143 
#define  DW_LANG_Java 142 
#define  DW_LANG_Mips_Assembler 141 
#define  DW_LANG_Modula2 140 
#define  DW_LANG_ObjC 139 
#define  DW_LANG_ObjC_plus_plus 138 
#define  DW_LANG_PLI 137 
#define  DW_LANG_Pascal83 136 
#define  DW_LANG_UPC 135 
#define  DW_LANG_Upc 134 
 unsigned long DW_LANG_hi_user ; 
 unsigned long DW_LANG_lo_user ; 
#define  DW_VIRTUALITY_none 133 
#define  DW_VIRTUALITY_pure_virtual 132 
#define  DW_VIRTUALITY_virtual 131 
#define  DW_VIS_exported 130 
#define  DW_VIS_local 129 
#define  DW_VIS_qualified 128 
 char* FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,unsigned long,unsigned long,unsigned long) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned long) ; 
 scalar_t__ do_debug_loc ; 
 scalar_t__ do_debug_ranges ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 char* FUNC6 (unsigned long) ; 
 int have_frame_base ; 
 int /*<<< orphan*/  need_base_address ; 
 scalar_t__ num_debug_info_entries ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 unsigned long FUNC8 (unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long) ; 
 void* FUNC11 (int*,unsigned int,int) ; 

__attribute__((used)) static unsigned char *
FUNC12 (unsigned long attribute,
			     unsigned long form,
			     unsigned char *data,
			     unsigned long cu_offset,
			     unsigned long pointer_size,
			     unsigned long offset_size,
			     int dwarf_version,
			     debug_info *debug_info_p,
			     int do_loc)
{
  unsigned long uvalue = 0;
  unsigned char *block_start = NULL;
  unsigned int bytes_read;

  switch (form)
    {
    default:
      break;

    case DW_FORM_ref_addr:
      if (dwarf_version == 2)
	{
	  uvalue = FUNC1 (data, pointer_size);
	  data += pointer_size;
	}
      else if (dwarf_version == 3)
	{
	  uvalue = FUNC1 (data, offset_size);
	  data += offset_size;
	}
      else
	{
	  FUNC4 (FUNC0("Internal error: DWARF version is not 2 or 3.\n"));
	}
      break;

    case DW_FORM_addr:
      uvalue = FUNC1 (data, pointer_size);
      data += pointer_size;
      break;

    case DW_FORM_strp:
      uvalue = FUNC1 (data, offset_size);
      data += offset_size;
      break;

    case DW_FORM_flag_present:
      uvalue = 1;
      break;

    case DW_FORM_ref1:
    case DW_FORM_flag:
    case DW_FORM_data1:
      uvalue = FUNC1 (data++, 1);
      break;

    case DW_FORM_ref2:
    case DW_FORM_data2:
      uvalue = FUNC1 (data, 2);
      data += 2;
      break;

    case DW_FORM_ref4:
    case DW_FORM_data4:
      uvalue = FUNC1 (data, 4);
      data += 4;
      break;

    case DW_FORM_sdata:
      uvalue = FUNC8 (data, & bytes_read, 1);
      data += bytes_read;
      break;

    case DW_FORM_ref_udata:
    case DW_FORM_udata:
      uvalue = FUNC8 (data, & bytes_read, 0);
      data += bytes_read;
      break;

    case DW_FORM_indirect:
      form = FUNC8 (data, & bytes_read, 0);
      data += bytes_read;
      if (!do_loc)
	FUNC7 (" %s", FUNC6 (form));
      return FUNC12 (attribute, form, data,
					  cu_offset, pointer_size,
					  offset_size, dwarf_version,
					  debug_info_p, do_loc);
    }

  switch (form)
    {
    case DW_FORM_ref_addr:
      if (!do_loc)
	FUNC7 (" <#%lx>", uvalue);
      break;

    case DW_FORM_ref1:
    case DW_FORM_ref2:
    case DW_FORM_ref4:
    case DW_FORM_ref_udata:
      if (!do_loc)
	FUNC7 (" <%lx>", uvalue + cu_offset);
      break;

    case DW_FORM_data4:
    case DW_FORM_addr:
      if (!do_loc)
	FUNC7 (" %#lx", uvalue);
      break;

    case DW_FORM_flag_present:
    case DW_FORM_flag:
    case DW_FORM_data1:
    case DW_FORM_data2:
    case DW_FORM_sdata:
    case DW_FORM_udata:
      if (!do_loc)
	FUNC7 (" %ld", uvalue);
      break;

    case DW_FORM_ref8:
    case DW_FORM_data8:
      if (!do_loc)
	{
	  uvalue = FUNC1 (data, 4);
	  FUNC7 (" %lx", uvalue);
	  FUNC7 (" %lx", (unsigned long) FUNC1 (data + 4, 4));
	}
      if ((do_loc || do_debug_loc || do_debug_ranges)
	  && num_debug_info_entries == 0)
	{
	  if (sizeof (uvalue) == 8)
	    uvalue = FUNC1 (data, 8);
	  else
	    FUNC4 (FUNC0("DW_FORM_data8 is unsupported when sizeof (unsigned long) != 8\n"));
	}
      data += 8;
      break;

    case DW_FORM_string:
      if (!do_loc)
	FUNC7 (" %s", data);
      data += FUNC9 ((char *) data) + 1;
      break;

    case DW_FORM_block:
      uvalue = FUNC8 (data, & bytes_read, 0);
      block_start = data + bytes_read;
      if (do_loc)
	data = block_start + uvalue;
      else
	data = FUNC3 (block_start, uvalue);
      break;

    case DW_FORM_block1:
      uvalue = FUNC1 (data, 1);
      block_start = data + 1;
      if (do_loc)
	data = block_start + uvalue;
      else
	data = FUNC3 (block_start, uvalue);
      break;

    case DW_FORM_block2:
      uvalue = FUNC1 (data, 2);
      block_start = data + 2;
      if (do_loc)
	data = block_start + uvalue;
      else
	data = FUNC3 (block_start, uvalue);
      break;

    case DW_FORM_block4:
      uvalue = FUNC1 (data, 4);
      block_start = data + 4;
      if (do_loc)
	data = block_start + uvalue;
      else
	data = FUNC3 (block_start, uvalue);
      break;

    case DW_FORM_strp:
      if (!do_loc)
	FUNC7 (FUNC0(" (indirect string, offset: 0x%lx): %s"),
		uvalue, FUNC5 (uvalue));
      break;

    case DW_FORM_indirect:
      /* Handled above.  */
      break;

    default:
      FUNC10 (FUNC0("Unrecognized form: %lu\n"), form);
      break;
    }

  /* For some attributes we can display further information.  */
  if ((do_loc || do_debug_loc || do_debug_ranges)
      && num_debug_info_entries == 0)
    {
      switch (attribute)
	{
	case DW_AT_frame_base:
	  have_frame_base = 1;
	case DW_AT_location:
	case DW_AT_data_member_location:
	case DW_AT_vtable_elem_location:
	case DW_AT_allocated:
	case DW_AT_associated:
	case DW_AT_data_location:
	case DW_AT_stride:
	case DW_AT_upper_bound:
	case DW_AT_lower_bound:
	  if (form == DW_FORM_data4 || form == DW_FORM_data8)
	    {
	      /* Process location list.  */
	      unsigned int max = debug_info_p->max_loc_offsets;
	      unsigned int num = debug_info_p->num_loc_offsets;

	      if (max == 0 || num >= max)
		{
		  max += 1024;
		  debug_info_p->loc_offsets
		    = FUNC11 (debug_info_p->loc_offsets,
				 max, sizeof (*debug_info_p->loc_offsets));
		  debug_info_p->have_frame_base
		    = FUNC11 (debug_info_p->have_frame_base,
				 max, sizeof (*debug_info_p->have_frame_base));
		  debug_info_p->max_loc_offsets = max;
		}
	      debug_info_p->loc_offsets [num] = uvalue;
	      debug_info_p->have_frame_base [num] = have_frame_base;
	      debug_info_p->num_loc_offsets++;
	    }
	  break;
	
	case DW_AT_low_pc:
	  if (need_base_address)
	    debug_info_p->base_address = uvalue;
	  break;

	case DW_AT_ranges:
	  if (form == DW_FORM_data4 || form == DW_FORM_data8)
	    {
	      /* Process range list.  */
	      unsigned int max = debug_info_p->max_range_lists;
	      unsigned int num = debug_info_p->num_range_lists;

	      if (max == 0 || num >= max)
		{
		  max += 1024;
		  debug_info_p->range_lists
		    = FUNC11 (debug_info_p->range_lists,
				 max, sizeof (*debug_info_p->range_lists));
		  debug_info_p->max_range_lists = max;
		}
	      debug_info_p->range_lists [num] = uvalue;
	      debug_info_p->num_range_lists++;
	    }
	  break;

	default:
	  break;
	}
    }

  if (do_loc)
    return data;

  FUNC7 ("\t");

  switch (attribute)
    {
    case DW_AT_inline:
      switch (uvalue)
	{
	case DW_INL_not_inlined:
	  FUNC7 (FUNC0("(not inlined)"));
	  break;
	case DW_INL_inlined:
	  FUNC7 (FUNC0("(inlined)"));
	  break;
	case DW_INL_declared_not_inlined:
	  FUNC7 (FUNC0("(declared as inline but ignored)"));
	  break;
	case DW_INL_declared_inlined:
	  FUNC7 (FUNC0("(declared as inline and inlined)"));
	  break;
	default:
	  FUNC7 (FUNC0("  (Unknown inline attribute value: %lx)"), uvalue);
	  break;
	}
      break;

    case DW_AT_language:
      switch (uvalue)
	{
	  /* Ordered by the numeric value of these constants.  */
	case DW_LANG_C89:		FUNC7 ("(ANSI C)"); break;
	case DW_LANG_C:			FUNC7 ("(non-ANSI C)"); break;
	case DW_LANG_Ada83:		FUNC7 ("(Ada)"); break;
	case DW_LANG_C_plus_plus:	FUNC7 ("(C++)"); break;
	case DW_LANG_Cobol74:		FUNC7 ("(Cobol 74)"); break;
	case DW_LANG_Cobol85:		FUNC7 ("(Cobol 85)"); break;
	case DW_LANG_Fortran77:		FUNC7 ("(FORTRAN 77)"); break;
	case DW_LANG_Fortran90:		FUNC7 ("(Fortran 90)"); break;
	case DW_LANG_Pascal83:		FUNC7 ("(ANSI Pascal)"); break;
	case DW_LANG_Modula2:		FUNC7 ("(Modula 2)"); break;
	  /* DWARF 2.1 values.	*/
	case DW_LANG_Java:		FUNC7 ("(Java)"); break;
	case DW_LANG_C99:		FUNC7 ("(ANSI C99)"); break;
	case DW_LANG_Ada95:		FUNC7 ("(ADA 95)"); break;
	case DW_LANG_Fortran95:		FUNC7 ("(Fortran 95)"); break;
	  /* DWARF 3 values.  */
	case DW_LANG_PLI:		FUNC7 ("(PLI)"); break;
	case DW_LANG_ObjC:		FUNC7 ("(Objective C)"); break;
	case DW_LANG_ObjC_plus_plus:	FUNC7 ("(Objective C++)"); break;
	case DW_LANG_UPC:		FUNC7 ("(Unified Parallel C)"); break;
	case DW_LANG_D:			FUNC7 ("(D)"); break;
	  /* MIPS extension.  */
	case DW_LANG_Mips_Assembler:	FUNC7 ("(MIPS assembler)"); break;
	  /* UPC extension.  */
	case DW_LANG_Upc:		FUNC7 ("(Unified Parallel C)"); break;
	default:
	  if (uvalue >= DW_LANG_lo_user && uvalue <= DW_LANG_hi_user)
	    FUNC7 ("(implementation defined: %lx)", uvalue);
	  else
	    FUNC7 ("(Unknown: %lx)", uvalue);
	  break;
	}
      break;

    case DW_AT_encoding:
      switch (uvalue)
	{
	case DW_ATE_void:		FUNC7 ("(void)"); break;
	case DW_ATE_address:		FUNC7 ("(machine address)"); break;
	case DW_ATE_boolean:		FUNC7 ("(boolean)"); break;
	case DW_ATE_complex_float:	FUNC7 ("(complex float)"); break;
	case DW_ATE_float:		FUNC7 ("(float)"); break;
	case DW_ATE_signed:		FUNC7 ("(signed)"); break;
	case DW_ATE_signed_char:	FUNC7 ("(signed char)"); break;
	case DW_ATE_unsigned:		FUNC7 ("(unsigned)"); break;
	case DW_ATE_unsigned_char:	FUNC7 ("(unsigned char)"); break;
	  /* DWARF 2.1 value.  */
	case DW_ATE_imaginary_float:	FUNC7 ("(imaginary float)"); break;
	case DW_ATE_decimal_float:	FUNC7 ("(decimal float)"); break;
	default:
	  if (uvalue >= DW_ATE_lo_user
	      && uvalue <= DW_ATE_hi_user)
	    FUNC7 ("(user defined type)");
	  else
	    FUNC7 ("(unknown type)");
	  break;
	}
      break;

    case DW_AT_accessibility:
      switch (uvalue)
	{
	case DW_ACCESS_public:		FUNC7 ("(public)"); break;
	case DW_ACCESS_protected:	FUNC7 ("(protected)"); break;
	case DW_ACCESS_private:		FUNC7 ("(private)"); break;
	default:
	  FUNC7 ("(unknown accessibility)");
	  break;
	}
      break;

    case DW_AT_visibility:
      switch (uvalue)
	{
	case DW_VIS_local:		FUNC7 ("(local)"); break;
	case DW_VIS_exported:		FUNC7 ("(exported)"); break;
	case DW_VIS_qualified:		FUNC7 ("(qualified)"); break;
	default:			FUNC7 ("(unknown visibility)"); break;
	}
      break;

    case DW_AT_virtuality:
      switch (uvalue)
	{
	case DW_VIRTUALITY_none:	FUNC7 ("(none)"); break;
	case DW_VIRTUALITY_virtual:	FUNC7 ("(virtual)"); break;
	case DW_VIRTUALITY_pure_virtual:FUNC7 ("(pure_virtual)"); break;
	default:			FUNC7 ("(unknown virtuality)"); break;
	}
      break;

    case DW_AT_identifier_case:
      switch (uvalue)
	{
	case DW_ID_case_sensitive:	FUNC7 ("(case_sensitive)"); break;
	case DW_ID_up_case:		FUNC7 ("(up_case)"); break;
	case DW_ID_down_case:		FUNC7 ("(down_case)"); break;
	case DW_ID_case_insensitive:	FUNC7 ("(case_insensitive)"); break;
	default:			FUNC7 ("(unknown case)"); break;
	}
      break;

    case DW_AT_calling_convention:
      switch (uvalue)
	{
	case DW_CC_normal:	FUNC7 ("(normal)"); break;
	case DW_CC_program:	FUNC7 ("(program)"); break;
	case DW_CC_nocall:	FUNC7 ("(nocall)"); break;
	default:
	  if (uvalue >= DW_CC_lo_user
	      && uvalue <= DW_CC_hi_user)
	    FUNC7 ("(user defined)");
	  else
	    FUNC7 ("(unknown convention)");
	}
      break;

    case DW_AT_ordering:
      switch (uvalue)
	{
	case -1: FUNC7 ("(undefined)"); break;
	case 0:  FUNC7 ("(row major)"); break;
	case 1:  FUNC7 ("(column major)"); break;
	}
      break;

    case DW_AT_frame_base:
      have_frame_base = 1;
    case DW_AT_location:
    case DW_AT_data_member_location:
    case DW_AT_vtable_elem_location:
    case DW_AT_allocated:
    case DW_AT_associated:
    case DW_AT_data_location:
    case DW_AT_stride:
    case DW_AT_upper_bound:
    case DW_AT_lower_bound:
      if (block_start)
	{
	  int need_frame_base;

	  FUNC7 ("(");
	  need_frame_base = FUNC2 (block_start,
							pointer_size,
							uvalue,
							cu_offset);
	  FUNC7 (")");
	  if (need_frame_base && !have_frame_base)
	    FUNC7 (FUNC0(" [without DW_AT_frame_base]"));
	}
      else if (form == DW_FORM_data4 || form == DW_FORM_data8)
	FUNC7 (FUNC0("(location list)"));

      break;

    default:
      break;
    }

  return data;
}