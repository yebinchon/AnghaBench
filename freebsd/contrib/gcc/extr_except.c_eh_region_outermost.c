
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function {TYPE_1__* eh; } ;
struct eh_region {int region_number; struct eh_region* outer; } ;
typedef int sbitmap ;
struct TYPE_2__ {scalar_t__ last_region_number; int region_tree; int region_array; } ;


 int SET_BIT (int ,int) ;
 scalar_t__ TEST_BIT (int ,int) ;
 struct eh_region* VEC_index (int ,int ,int) ;
 int eh_region ;
 int gcc_assert (int) ;
 int sbitmap_alloc (scalar_t__) ;
 int sbitmap_free (int ) ;
 int sbitmap_zero (int ) ;

int
eh_region_outermost (struct function *ifun, int region_a, int region_b)
{
  struct eh_region *rp_a, *rp_b;
  sbitmap b_outer;

  gcc_assert (ifun->eh->last_region_number > 0);
  gcc_assert (ifun->eh->region_tree);

  rp_a = VEC_index (eh_region, ifun->eh->region_array, region_a);
  rp_b = VEC_index (eh_region, ifun->eh->region_array, region_b);
  gcc_assert (rp_a != ((void*)0));
  gcc_assert (rp_b != ((void*)0));

  b_outer = sbitmap_alloc (ifun->eh->last_region_number + 1);
  sbitmap_zero (b_outer);

  do
    {
      SET_BIT (b_outer, rp_b->region_number);
      rp_b = rp_b->outer;
    }
  while (rp_b);

  do
    {
      if (TEST_BIT (b_outer, rp_a->region_number))
 {
   sbitmap_free (b_outer);
   return rp_a->region_number;
 }
      rp_a = rp_a->outer;
    }
  while (rp_a);

  sbitmap_free (b_outer);
  return -1;
}
