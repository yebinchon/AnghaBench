
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_5__ {int reg_mask; int reg_offset; int fpreg_mask; int leaf; int frame_offset; int frame_reg; int pc_reg; int * isym; } ;
struct TYPE_4__ {int flags; } ;


 int BSF_FUNCTION ;
 scalar_t__ DEBUG_STABS ;
 scalar_t__ ISDIGIT (char) ;
 int SEC_CODE ;
 int SKIP_WHITESPACE () ;
 int S_GET_NAME (int *) ;
 int _ (char*) ;
 int as_warn (int ) ;
 int bfd_get_section_flags (int ,scalar_t__) ;
 scalar_t__ bss_section ;
 TYPE_2__ cur_proc ;
 TYPE_2__* cur_proc_ptr ;
 scalar_t__ data_section ;
 scalar_t__ debug_type ;
 int demand_empty_rest_of_line () ;
 int get_number () ;
 int * get_symbol () ;
 char* input_line_pointer ;
 scalar_t__ now_seg ;
 int numprocs ;
 int stabs_generate_asm_func (int ,int ) ;
 int stdoutput ;
 TYPE_1__* symbol_get_bfdsym (int *) ;

__attribute__((used)) static void
s_score_ent (int aent)
{
  symbolS *symbolP;
  int maybe_text;

  symbolP = get_symbol ();
  if (*input_line_pointer == ',')
    ++input_line_pointer;
  SKIP_WHITESPACE ();
  if (ISDIGIT (*input_line_pointer) || *input_line_pointer == '-')
    get_number ();







  if (now_seg != data_section && now_seg != bss_section)
    maybe_text = 1;
  else
    maybe_text = 0;

  if (!maybe_text)
    as_warn (_(".ent or .aent not in text section."));
  if (!aent && cur_proc_ptr)
    as_warn (_("missing .end"));
  if (!aent)
    {
      cur_proc_ptr = &cur_proc;
      cur_proc_ptr->reg_mask = 0xdeadbeaf;
      cur_proc_ptr->reg_offset = 0xdeadbeaf;
      cur_proc_ptr->fpreg_mask = 0xdeafbeaf;
      cur_proc_ptr->leaf = 0xdeafbeaf;
      cur_proc_ptr->frame_offset = 0xdeafbeaf;
      cur_proc_ptr->frame_reg = 0xdeafbeaf;
      cur_proc_ptr->pc_reg = 0xdeafbeaf;
      cur_proc_ptr->isym = symbolP;
      symbol_get_bfdsym (symbolP)->flags |= BSF_FUNCTION;
      ++numprocs;
      if (debug_type == DEBUG_STABS)
        stabs_generate_asm_func (S_GET_NAME (symbolP), S_GET_NAME (symbolP));
    }
  demand_empty_rest_of_line ();
}
