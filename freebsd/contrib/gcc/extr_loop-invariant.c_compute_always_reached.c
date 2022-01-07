
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {unsigned int num_nodes; int latch; } ;
typedef int bitmap ;
typedef int basic_block ;


 int CDI_DOMINATORS ;
 scalar_t__ bitmap_bit_p (int ,unsigned int) ;
 int bitmap_set_bit (int ,unsigned int) ;
 scalar_t__ dominated_by_p (int ,int ,int ) ;

__attribute__((used)) static void
compute_always_reached (struct loop *loop, basic_block *body,
   bitmap may_exit, bitmap always_reached)
{
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    {
      if (dominated_by_p (CDI_DOMINATORS, loop->latch, body[i]))
 bitmap_set_bit (always_reached, i);

      if (bitmap_bit_p (may_exit, i))
 return;
    }
}
