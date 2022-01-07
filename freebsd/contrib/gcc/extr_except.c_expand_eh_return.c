
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int ehr_handler; int ehr_stackadj; int ehr_label; } ;


 int EH_RETURN_HANDLER_RTX ;
 int EH_RETURN_STACKADJ_RTX ;
 scalar_t__ HAVE_eh_return ;
 TYPE_2__* cfun ;
 int clobber_return_register () ;
 int const0_rtx ;
 int current_function_calls_eh_return ;
 int emit_insn (int ) ;
 int emit_jump (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int error (char*) ;
 int gen_eh_return (int ) ;
 int gen_label_rtx () ;

void
expand_eh_return (void)
{
  rtx around_label;

  if (! cfun->eh->ehr_label)
    return;

  current_function_calls_eh_return = 1;





  around_label = gen_label_rtx ();
  emit_jump (around_label);

  emit_label (cfun->eh->ehr_label);
  clobber_return_register ();
    {



      error ("__builtin_eh_return not supported on this target");

    }

  emit_label (around_label);
}
