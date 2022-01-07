
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
typedef TYPE_2__* edge ;
struct TYPE_5__ {scalar_t__ r; } ;
struct TYPE_6__ {int flags; TYPE_1__ insns; } ;


 int EDGE_ABNORMAL ;
 scalar_t__ EDGE_CRITICAL_P (TYPE_2__*) ;
 scalar_t__ NULL_RTX ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int gcc_assert (int) ;
 scalar_t__ get_insns () ;
 int push_to_sequence (scalar_t__) ;
 int start_sequence () ;

void
insert_insn_on_edge (rtx pattern, edge e)
{


  gcc_assert (!((e->flags & EDGE_ABNORMAL) && EDGE_CRITICAL_P (e)));

  if (e->insns.r == NULL_RTX)
    start_sequence ();
  else
    push_to_sequence (e->insns.r);

  emit_insn (pattern);

  e->insns.r = get_insns ();
  end_sequence ();
}
