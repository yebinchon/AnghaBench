
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_line_info {int flags; } ;


 scalar_t__ DEBUG_DWARF2 ;
 int DWARF2_FLAG_BASIC_BLOCK ;
 int DWARF2_FLAG_EPILOGUE_BEGIN ;
 int DWARF2_FLAG_PROLOGUE_END ;
 scalar_t__ FALSE ;
 struct dwarf2_line_info current ;
 scalar_t__ debug_type ;
 int dwarf2_gen_line_info (scalar_t__,struct dwarf2_line_info*) ;
 int dwarf2_where (struct dwarf2_line_info*) ;
 scalar_t__ frag_now_fix () ;
 scalar_t__ loc_directive_seen ;

void
dwarf2_emit_insn (int size)
{
  struct dwarf2_line_info loc;

  if (loc_directive_seen)
    {





      loc = current;



      if (debug_type != DEBUG_DWARF2)
 loc_directive_seen = FALSE;
    }
  else if (debug_type != DEBUG_DWARF2)
    return;
  else
    dwarf2_where (&loc);

  dwarf2_gen_line_info (frag_now_fix () - size, &loc);

  current.flags &= ~(DWARF2_FLAG_BASIC_BLOCK
       | DWARF2_FLAG_PROLOGUE_END
       | DWARF2_FLAG_EPILOGUE_BEGIN);
}
