
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__ index; } ;


 scalar_t__ NUM_FIXED_BLOCKS ;
 int maybe_hot_bb_p (TYPE_1__*) ;

__attribute__((used)) static bool
ignore_bb_p (basic_block bb)
{
  if (bb->index < NUM_FIXED_BLOCKS)
    return 1;
  if (!maybe_hot_bb_p (bb))
    return 1;
  return 0;
}
