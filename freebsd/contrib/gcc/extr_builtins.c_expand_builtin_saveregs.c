
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_3__ {scalar_t__ (* expand_builtin_saveregs ) () ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 int emit_insn_after (scalar_t__,int ) ;
 int end_sequence () ;
 int entry_of_function () ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int push_topmost_sequence () ;
 scalar_t__ saveregs_value ;
 int start_sequence () ;
 scalar_t__ stub1 () ;
 TYPE_2__ targetm ;

rtx
expand_builtin_saveregs (void)
{
  rtx val, seq;



  if (saveregs_value != 0)
    return saveregs_value;





  start_sequence ();


  val = targetm.calls.expand_builtin_saveregs ();

  seq = get_insns ();
  end_sequence ();

  saveregs_value = val;




  push_topmost_sequence ();
  emit_insn_after (seq, entry_of_function ());
  pop_topmost_sequence ();

  return val;
}
