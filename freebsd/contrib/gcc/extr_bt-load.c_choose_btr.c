
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HARD_REG_SET ;


 int FIRST_PSEUDO_REGISTER ;
 int GO_IF_HARD_REG_SUBSET (int ,int ,int ) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int all_btrs ;
 int give_up ;
 int* reg_alloc_order ;

__attribute__((used)) static int
choose_btr (HARD_REG_SET used_btrs)
{
  int i;
  GO_IF_HARD_REG_SUBSET (all_btrs, used_btrs, give_up);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {



      int regno = i;

      if (TEST_HARD_REG_BIT (all_btrs, regno)
   && !TEST_HARD_REG_BIT (used_btrs, regno))
 return regno;
    }
give_up:
  return -1;
}
