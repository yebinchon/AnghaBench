
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct dwarf2_line_info {unsigned int filenum; unsigned int line; } ;
typedef int addressT ;


 scalar_t__ DEBUG_DWARF2 ;
 scalar_t__ debug_type ;
 int dwarf2_gen_line_info_1 (int *,struct dwarf2_line_info*) ;
 int frag_now ;
 int now_seg ;
 int * symbol_temp_new (int ,int ,int ) ;

void
dwarf2_gen_line_info (addressT ofs, struct dwarf2_line_info *loc)
{
  static unsigned int line = -1;
  static unsigned int filenum = -1;

  symbolS *sym;


  if (loc->filenum == 0 || loc->line == 0)
    return;





  if (debug_type == DEBUG_DWARF2
      && line == loc->line && filenum == loc->filenum)
    return;

  line = loc->line;
  filenum = loc->filenum;

  sym = symbol_temp_new (now_seg, ofs, frag_now);
  dwarf2_gen_line_info_1 (sym, loc);
}
