
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_def {int lineno; int insn_code; int insn_index; int num_alternatives; int vec_idx; int def; struct insn_def* next; } ;
typedef int rtx ;





 int GET_CODE (int ) ;
 void* count_alternatives (int ) ;
 struct insn_def* defs ;
 int gcc_unreachable () ;
 int got_define_asm_attributes ;
 void* insn_code_number ;
 void* insn_index_number ;
 struct insn_def* oballoc (int) ;

__attribute__((used)) static void
gen_insn (rtx exp, int lineno)
{
  struct insn_def *id;

  id = oballoc (sizeof (struct insn_def));
  id->next = defs;
  defs = id;
  id->def = exp;
  id->lineno = lineno;

  switch (GET_CODE (exp))
    {
    case 129:
      id->insn_code = insn_code_number;
      id->insn_index = insn_index_number;
      id->num_alternatives = count_alternatives (exp);
      if (id->num_alternatives == 0)
 id->num_alternatives = 1;
      id->vec_idx = 4;
      break;

    case 128:
      id->insn_code = insn_code_number;
      id->insn_index = insn_index_number;
      id->num_alternatives = count_alternatives (exp);
      if (id->num_alternatives == 0)
 id->num_alternatives = 1;
      id->vec_idx = 3;
      break;

    case 130:
      id->insn_code = -1;
      id->insn_index = -1;
      id->num_alternatives = 1;
      id->vec_idx = 0;
      got_define_asm_attributes = 1;
      break;

    default:
      gcc_unreachable ();
    }
}
