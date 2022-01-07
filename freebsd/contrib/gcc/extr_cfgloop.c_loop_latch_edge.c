
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int header; int latch; } ;
typedef int edge ;


 int find_edge (int ,int ) ;

edge
loop_latch_edge (const struct loop *loop)
{
  return find_edge (loop->latch, loop->header);
}
