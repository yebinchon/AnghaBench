
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ gcov_type ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {scalar_t__ count; scalar_t__ frequency; int succs; } ;
struct TYPE_7__ {scalar_t__ count; } ;


 int EDGE_COUNT (int ) ;
 int gcc_assert (int) ;
 TYPE_1__* single_succ_edge (TYPE_2__*) ;
 int single_succ_p (TYPE_2__*) ;

__attribute__((used)) static void
decrease_profile (basic_block bb, gcov_type count, int frequency)
{
  edge e;
  bb->count -= count;
  if (bb->count < 0)
    bb->count = 0;
  bb->frequency -= frequency;
  if (bb->frequency < 0)
    bb->frequency = 0;
  if (!single_succ_p (bb))
    {
      gcc_assert (!EDGE_COUNT (bb->succs));
      return;
    }
  e = single_succ_edge (bb);
  e->count -= count;
  if (e->count < 0)
    e->count = 0;
}
