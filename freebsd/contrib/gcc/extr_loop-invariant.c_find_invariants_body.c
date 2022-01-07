
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {unsigned int num_nodes; } ;
typedef int bitmap ;
typedef int basic_block ;


 int bitmap_bit_p (int ,unsigned int) ;
 int find_invariants_bb (int ,int ,int ) ;

__attribute__((used)) static void
find_invariants_body (struct loop *loop, basic_block *body,
        bitmap always_reached, bitmap always_executed)
{
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    find_invariants_bb (body[i],
   bitmap_bit_p (always_reached, i),
   bitmap_bit_p (always_executed, i));
}
