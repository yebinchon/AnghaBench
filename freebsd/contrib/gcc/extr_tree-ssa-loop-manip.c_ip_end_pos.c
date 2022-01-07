
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int latch; } ;
typedef int basic_block ;



basic_block
ip_end_pos (struct loop *loop)
{
  return loop->latch;
}
