
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_alloc (int ,int ,int) ;
 int actual_stamp ;
 int heap ;
 int invariant_p ;
 int invariants ;

__attribute__((used)) static void
init_inv_motion_data (void)
{
  actual_stamp = 1;

  invariants = VEC_alloc (invariant_p, heap, 100);
}
