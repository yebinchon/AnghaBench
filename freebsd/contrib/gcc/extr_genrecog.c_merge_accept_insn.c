
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_clobbers_to_add; int code_number; int lineno; } ;
struct TYPE_4__ {TYPE_1__ insn; } ;
struct decision_test {scalar_t__ type; TYPE_2__ u; struct decision_test* next; } ;
struct decision {struct decision_test* tests; } ;


 scalar_t__ DT_accept_insn ;
 int error_count ;
 int get_insn_name (int ) ;
 int message_with_line (int ,char*,int ,...) ;

__attribute__((used)) static void
merge_accept_insn (struct decision *oldd, struct decision *addd)
{
  struct decision_test *old, *add;

  for (old = oldd->tests; old; old = old->next)
    if (old->type == DT_accept_insn)
      break;
  if (old == ((void*)0))
    return;

  for (add = addd->tests; add; add = add->next)
    if (add->type == DT_accept_insn)
      break;
  if (add == ((void*)0))
    return;




  if (old->u.insn.num_clobbers_to_add == 0
      && add->u.insn.num_clobbers_to_add > 0)
    {

    }
  else if (old->u.insn.num_clobbers_to_add > 0
    && add->u.insn.num_clobbers_to_add == 0)
    {

      old->u.insn = add->u.insn;
    }
  else
    {
      message_with_line (add->u.insn.lineno, "`%s' matches `%s'",
    get_insn_name (add->u.insn.code_number),
    get_insn_name (old->u.insn.code_number));
      message_with_line (old->u.insn.lineno, "previous definition of `%s'",
    get_insn_name (old->u.insn.code_number));
      error_count++;
    }
}
