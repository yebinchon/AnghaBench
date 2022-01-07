
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct expression {int nelts; TYPE_1__* elts; int language_defn; } ;
struct block {int dummy; } ;
struct TYPE_3__ {struct symbol* symbol; struct block* block; int opcode; scalar_t__ longconst; } ;
typedef scalar_t__ LONGEST ;


 scalar_t__ EXP_ELEM_TO_BYTES (int) ;
 int OP_FUNCALL ;
 int OP_VAR_VALUE ;
 int memcpy (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 int xfree (struct expression*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static void
replace_operator_with_call (struct expression **expp, int pc, int nargs,
       int oplen, struct symbol *sym,
       struct block *block)
{


  struct expression *newexp = (struct expression *)
    xmalloc (sizeof (struct expression)
      + EXP_ELEM_TO_BYTES ((*expp)->nelts + 7 - oplen));
  struct expression *exp = *expp;

  newexp->nelts = exp->nelts + 7 - oplen;
  newexp->language_defn = exp->language_defn;
  memcpy (newexp->elts, exp->elts, EXP_ELEM_TO_BYTES (pc));
  memcpy (newexp->elts + pc + 7, exp->elts + pc + oplen,
   EXP_ELEM_TO_BYTES (exp->nelts - pc - oplen));

  newexp->elts[pc].opcode = newexp->elts[pc + 2].opcode = OP_FUNCALL;
  newexp->elts[pc + 1].longconst = (LONGEST) nargs;

  newexp->elts[pc + 3].opcode = newexp->elts[pc + 6].opcode = OP_VAR_VALUE;
  newexp->elts[pc + 4].block = block;
  newexp->elts[pc + 5].symbol = sym;

  *expp = newexp;
  xfree (exp);
}
