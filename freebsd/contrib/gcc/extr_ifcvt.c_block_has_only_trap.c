
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_6__ {int succs; } ;


 scalar_t__ BB_END (TYPE_1__*) ;
 scalar_t__ EDGE_COUNT (int ) ;
 TYPE_1__* EXIT_BLOCK_PTR ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ TRAP_CONDITION (int ) ;
 scalar_t__ TRAP_IF ;
 scalar_t__ const_true_rtx ;
 scalar_t__ first_active_insn (TYPE_1__*) ;

__attribute__((used)) static rtx
block_has_only_trap (basic_block bb)
{
  rtx trap;


  if (bb == EXIT_BLOCK_PTR)
    return NULL_RTX;


  if (EDGE_COUNT (bb->succs) > 0)
    return NULL_RTX;


  trap = first_active_insn (bb);
  if (! (trap == BB_END (bb)
  && GET_CODE (PATTERN (trap)) == TRAP_IF
         && TRAP_CONDITION (PATTERN (trap)) == const_true_rtx))
    return NULL_RTX;

  return trap;
}
