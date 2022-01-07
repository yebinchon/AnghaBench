
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * container; int * ptr; } ;
struct TYPE_6__ {TYPE_2__* bb; TYPE_3__ tsi; } ;
typedef TYPE_1__ block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_7__ {scalar_t__ index; scalar_t__ stmt_list; } ;


 scalar_t__ NUM_FIXED_BLOCKS ;
 int gcc_assert (int) ;
 TYPE_3__ tsi_start (scalar_t__) ;

__attribute__((used)) static inline block_stmt_iterator
bsi_start (basic_block bb)
{
  block_stmt_iterator bsi;
  if (bb->stmt_list)
    bsi.tsi = tsi_start (bb->stmt_list);
  else
    {
      gcc_assert (bb->index < NUM_FIXED_BLOCKS);
      bsi.tsi.ptr = ((void*)0);
      bsi.tsi.container = ((void*)0);
    }
  bsi.bb = bb;
  return bsi;
}
