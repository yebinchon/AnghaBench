
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_5__ {scalar_t__ object; } ;
struct TYPE_4__ {int flags; } ;


 int BB_DIRTY ;
 TYPE_1__* BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 TYPE_2__* changes ;
 int num_changes ;

void
confirm_change_group (void)
{
  int i;
  basic_block bb;

  for (i = 0; i < num_changes; i++)
    if (changes[i].object
 && INSN_P (changes[i].object)
 && (bb = BLOCK_FOR_INSN (changes[i].object)))
      bb->flags |= BB_DIRTY;

  num_changes = 0;
}
