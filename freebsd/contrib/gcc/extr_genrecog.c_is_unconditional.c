
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_clobbers_to_add; } ;
struct TYPE_4__ {TYPE_1__ insn; } ;
struct decision_test {scalar_t__ type; TYPE_2__ u; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;


 scalar_t__ DT_accept_insn ;
 scalar_t__ DT_accept_op ;



 int gcc_unreachable () ;

__attribute__((used)) static int
is_unconditional (struct decision_test *t, enum routine_type subroutine_type)
{
  if (t->type == DT_accept_op)
    return 1;

  if (t->type == DT_accept_insn)
    {
      switch (subroutine_type)
 {
 case 129:
   return (t->u.insn.num_clobbers_to_add == 0);
 case 128:
   return 1;
 case 130:
   return -1;
 default:
   gcc_unreachable ();
 }
    }

  return 0;
}
