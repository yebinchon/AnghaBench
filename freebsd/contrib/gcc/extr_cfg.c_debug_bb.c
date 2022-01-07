
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int dump_bb (int ,int ,int ) ;
 int stderr ;

void
debug_bb (basic_block bb)
{
  dump_bb (bb, stderr, 0);
}
