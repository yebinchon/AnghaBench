
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct dwarf2_line_info {int flags; } ;


 scalar_t__ DEBUG_DWARF2 ;
 int DWARF2_FLAG_BASIC_BLOCK ;
 int DWARF2_FLAG_EPILOGUE_BEGIN ;
 int DWARF2_FLAG_PROLOGUE_END ;
 int FALSE ;
 int SEC_CODE ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 int bfd_get_section_flags (int ,scalar_t__) ;
 struct dwarf2_line_info current ;
 scalar_t__ debug_type ;
 int dwarf2_gen_line_info_1 (int *,struct dwarf2_line_info*) ;
 int dwarf2_loc_mark_labels ;
 int dwarf2_where (struct dwarf2_line_info*) ;
 int loc_directive_seen ;
 scalar_t__ now_seg ;
 int stdoutput ;

void
dwarf2_emit_label (symbolS *label)
{
  struct dwarf2_line_info loc;

  if (!dwarf2_loc_mark_labels)
    return;
  if (S_GET_SEGMENT (label) != now_seg)
    return;
  if (!(bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE))
    return;

  if (debug_type == DEBUG_DWARF2)
    dwarf2_where (&loc);
  else
    {
      loc = current;
      loc_directive_seen = FALSE;
    }

  loc.flags |= DWARF2_FLAG_BASIC_BLOCK;

  current.flags &= ~(DWARF2_FLAG_BASIC_BLOCK
       | DWARF2_FLAG_PROLOGUE_END
       | DWARF2_FLAG_EPILOGUE_BEGIN);

  dwarf2_gen_line_info_1 (label, &loc);
}
