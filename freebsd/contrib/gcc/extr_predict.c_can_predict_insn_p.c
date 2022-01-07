
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int succs; } ;


 TYPE_1__* BLOCK_FOR_INSN (int ) ;
 int EDGE_COUNT (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ any_condjump_p (int ) ;

__attribute__((used)) static bool
can_predict_insn_p (rtx insn)
{
  return (JUMP_P (insn)
   && any_condjump_p (insn)
   && EDGE_COUNT (BLOCK_FOR_INSN (insn)->succs) >= 2);
}
