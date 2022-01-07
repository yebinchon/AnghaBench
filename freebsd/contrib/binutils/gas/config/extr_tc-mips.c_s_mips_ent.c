
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
typedef int procS ;
struct TYPE_6__ {int * func_sym; } ;
struct TYPE_5__ {int flags; } ;


 int BSF_FUNCTION ;
 scalar_t__ DEBUG_STABS ;
 scalar_t__ ISDIGIT (char) ;
 int SEC_CODE ;
 int SKIP_WHITESPACE () ;
 int S_GET_NAME (int *) ;
 int _ (char*) ;
 int as_warn (int ) ;
 int bfd_get_section_flags (int ,int ) ;
 TYPE_2__ cur_proc ;
 TYPE_2__* cur_proc_ptr ;
 scalar_t__ debug_type ;
 int demand_empty_rest_of_line () ;
 int get_number () ;
 int * get_symbol () ;
 char* input_line_pointer ;
 int memset (TYPE_2__*,char,int) ;
 scalar_t__ mips_cprestore_valid ;
 scalar_t__ mips_frame_reg_valid ;
 int now_seg ;
 int numprocs ;
 int stabs_generate_asm_func (int ,int ) ;
 int stdoutput ;
 TYPE_1__* symbol_get_bfdsym (int *) ;

__attribute__((used)) static void
s_mips_ent (int aent)
{
  symbolS *symbolP;

  symbolP = get_symbol ();
  if (*input_line_pointer == ',')
    ++input_line_pointer;
  SKIP_WHITESPACE ();
  if (ISDIGIT (*input_line_pointer)
      || *input_line_pointer == '-')
    get_number ();

  if ((bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE) == 0)
    as_warn (_(".ent or .aent not in text section."));

  if (!aent && cur_proc_ptr)
    as_warn (_("missing .end"));

  if (!aent)
    {

      mips_frame_reg_valid = 0;
      mips_cprestore_valid = 0;

      cur_proc_ptr = &cur_proc;
      memset (cur_proc_ptr, '\0', sizeof (procS));

      cur_proc_ptr->func_sym = symbolP;

      symbol_get_bfdsym (symbolP)->flags |= BSF_FUNCTION;

      ++numprocs;

      if (debug_type == DEBUG_STABS)
        stabs_generate_asm_func (S_GET_NAME (symbolP),
     S_GET_NAME (symbolP));
    }

  demand_empty_rest_of_line ();
}
