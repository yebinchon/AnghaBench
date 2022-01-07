
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int BASIC_BLOCK (int) ;
 int dump_bb (int ,int ,int ) ;
 int stderr ;

basic_block
debug_bb_n (int n)
{
  basic_block bb = BASIC_BLOCK (n);
  dump_bb (bb, stderr, 0);
  return bb;
}
