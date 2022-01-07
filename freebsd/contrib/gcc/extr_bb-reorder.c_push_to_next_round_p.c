
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gcov_type ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int frequency; scalar_t__ count; } ;


 scalar_t__ probably_never_executed_bb_p (TYPE_1__*) ;

__attribute__((used)) static bool
push_to_next_round_p (basic_block bb, int round, int number_of_rounds,
        int exec_th, gcov_type count_th)
{
  bool there_exists_another_round;
  bool block_not_hot_enough;

  there_exists_another_round = round < number_of_rounds - 1;

  block_not_hot_enough = (bb->frequency < exec_th
     || bb->count < count_th
     || probably_never_executed_bb_p (bb));

  if (there_exists_another_round
      && block_not_hot_enough)
    return 1;
  else
    return 0;
}
