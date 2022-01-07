
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_8__ {TYPE_1__* next_bb; } ;
struct TYPE_7__ {struct TYPE_7__* next_bb; } ;


 TYPE_1__* EXIT_BLOCK_PTR ;
 TYPE_3__* single_succ (TYPE_1__*) ;
 scalar_t__ single_succ_p (TYPE_1__*) ;

__attribute__((used)) static bool
last_basic_block_p (basic_block bb)
{
  if (bb == EXIT_BLOCK_PTR)
    return 0;

  return (bb->next_bb == EXIT_BLOCK_PTR
   || (bb->next_bb->next_bb == EXIT_BLOCK_PTR
       && single_succ_p (bb)
       && single_succ (bb)->next_bb == EXIT_BLOCK_PTR));
}
