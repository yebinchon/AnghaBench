
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {unsigned int filenum; unsigned int column; unsigned int isa; unsigned int flags; unsigned int line; } ;
struct line_entry {struct line_entry* next; TYPE_1__ loc; int * label; } ;
typedef int segT ;
typedef int fragS ;
typedef scalar_t__ addressT ;


 int DWARF2_FLAG_BASIC_BLOCK ;
 int DWARF2_FLAG_EPILOGUE_BEGIN ;
 unsigned int DWARF2_FLAG_IS_STMT ;
 int DWARF2_FLAG_PROLOGUE_END ;
 scalar_t__ DWARF2_LINE_DEFAULT_IS_STMT ;
 scalar_t__ DWARF2_USE_FIXED_ADVANCE_PC ;
 int DW_LNS_negate_stmt ;
 int DW_LNS_set_basic_block ;
 int DW_LNS_set_column ;
 int DW_LNS_set_epilogue_begin ;
 int DW_LNS_set_file ;
 int DW_LNS_set_isa ;
 int DW_LNS_set_prologue_end ;
 int INT_MAX ;
 scalar_t__ S_GET_VALUE (int *) ;
 int free (struct line_entry*) ;
 scalar_t__ get_frag_fix (int *,int ) ;
 int * last_frag_for_seg (int ) ;
 int out_fixed_inc_line_addr (int,int *,int *) ;
 int out_inc_line_addr (int,scalar_t__) ;
 int out_opcode (int ) ;
 int out_set_addr (int *) ;
 int out_uleb128 (unsigned int) ;
 int relax_inc_line_addr (int,int *,int *) ;
 int * symbol_get_frag (int *) ;
 int * symbol_temp_new (int ,scalar_t__,int *) ;

__attribute__((used)) static void
process_entries (segT seg, struct line_entry *e)
{
  unsigned filenum = 1;
  unsigned line = 1;
  unsigned column = 0;
  unsigned isa = 0;
  unsigned flags = DWARF2_LINE_DEFAULT_IS_STMT ? DWARF2_FLAG_IS_STMT : 0;
  fragS *last_frag = ((void*)0), *frag;
  addressT last_frag_ofs = 0, frag_ofs;
  symbolS *last_lab = ((void*)0), *lab;
  struct line_entry *next;

  do
    {
      int line_delta;

      if (filenum != e->loc.filenum)
 {
   filenum = e->loc.filenum;
   out_opcode (DW_LNS_set_file);
   out_uleb128 (filenum);
 }

      if (column != e->loc.column)
 {
   column = e->loc.column;
   out_opcode (DW_LNS_set_column);
   out_uleb128 (column);
 }

      if (isa != e->loc.isa)
 {
   isa = e->loc.isa;
   out_opcode (DW_LNS_set_isa);
   out_uleb128 (isa);
 }

      if ((e->loc.flags ^ flags) & DWARF2_FLAG_IS_STMT)
 {
   flags = e->loc.flags;
   out_opcode (DW_LNS_negate_stmt);
 }

      if (e->loc.flags & DWARF2_FLAG_BASIC_BLOCK)
 out_opcode (DW_LNS_set_basic_block);

      if (e->loc.flags & DWARF2_FLAG_PROLOGUE_END)
 out_opcode (DW_LNS_set_prologue_end);

      if (e->loc.flags & DWARF2_FLAG_EPILOGUE_BEGIN)
 out_opcode (DW_LNS_set_epilogue_begin);





      line_delta = e->loc.line - line;
      lab = e->label;
      frag = symbol_get_frag (lab);
      frag_ofs = S_GET_VALUE (lab);

      if (last_frag == ((void*)0))
 {
   out_set_addr (lab);
   out_inc_line_addr (line_delta, 0);
 }
      else if (DWARF2_USE_FIXED_ADVANCE_PC)
 out_fixed_inc_line_addr (line_delta, lab, last_lab);
      else if (frag == last_frag)
 out_inc_line_addr (line_delta, frag_ofs - last_frag_ofs);
      else
 relax_inc_line_addr (line_delta, lab, last_lab);

      line = e->loc.line;
      last_lab = lab;
      last_frag = frag;
      last_frag_ofs = frag_ofs;

      next = e->next;
      free (e);
      e = next;
    }
  while (e);


  frag = last_frag_for_seg (seg);
  frag_ofs = get_frag_fix (frag, seg);
  if (DWARF2_USE_FIXED_ADVANCE_PC)
    {
      lab = symbol_temp_new (seg, frag_ofs, frag);
      out_fixed_inc_line_addr (INT_MAX, lab, last_lab);
    }
  else if (frag == last_frag)
    out_inc_line_addr (INT_MAX, frag_ofs - last_frag_ofs);
  else
    {
      lab = symbol_temp_new (seg, frag_ofs, frag);
      relax_inc_line_addr (INT_MAX, lab, last_lab);
    }
}
