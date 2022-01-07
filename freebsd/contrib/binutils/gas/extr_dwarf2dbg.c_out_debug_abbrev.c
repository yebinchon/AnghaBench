
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int segT ;
struct TYPE_2__ {int * next; } ;


 scalar_t__ DWARF2_FORMAT () ;
 int DW_AT_comp_dir ;
 int DW_AT_high_pc ;
 int DW_AT_language ;
 int DW_AT_low_pc ;
 int DW_AT_name ;
 int DW_AT_producer ;
 int DW_AT_ranges ;
 int DW_AT_stmt_list ;
 int DW_CHILDREN_no ;
 int DW_FORM_addr ;
 int DW_FORM_data2 ;
 int DW_FORM_data4 ;
 int DW_FORM_data8 ;
 int DW_FORM_string ;
 int DW_TAG_compile_unit ;
 TYPE_1__* all_segs ;
 scalar_t__ dwarf2_format_32bit ;
 int out_abbrev (int ,int ) ;
 int out_byte (int ) ;
 int out_uleb128 (int) ;
 int subseg_set (int ,int ) ;

__attribute__((used)) static void
out_debug_abbrev (segT abbrev_seg)
{
  subseg_set (abbrev_seg, 0);

  out_uleb128 (1);
  out_uleb128 (DW_TAG_compile_unit);
  out_byte (DW_CHILDREN_no);
  out_abbrev (DW_AT_stmt_list, DW_FORM_data4);
  if (all_segs->next == ((void*)0))
    {
      out_abbrev (DW_AT_low_pc, DW_FORM_addr);
      out_abbrev (DW_AT_high_pc, DW_FORM_addr);
    }
  else
    {
      if (DWARF2_FORMAT () == dwarf2_format_32bit)
 out_abbrev (DW_AT_ranges, DW_FORM_data4);
      else
 out_abbrev (DW_AT_ranges, DW_FORM_data8);
    }
  out_abbrev (DW_AT_name, DW_FORM_string);
  out_abbrev (DW_AT_comp_dir, DW_FORM_string);
  out_abbrev (DW_AT_producer, DW_FORM_string);
  out_abbrev (DW_AT_language, DW_FORM_data2);
  out_abbrev (0, 0);


  out_byte (0);
}
