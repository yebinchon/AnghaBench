
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int expr; int bitmap_index; } ;
typedef int rtx ;


 size_t BLOCK_NUM (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 scalar_t__ TEST_BIT (int ,int ) ;
 int * cprop_avin ;
 int gcc_assert (int) ;
 scalar_t__ gcse_constant_p (int ) ;
 struct expr* lookup_set (int,int *) ;
 struct expr* next_set (int,struct expr*) ;
 scalar_t__ oprs_not_set_p (int ,int ) ;
 int set_hash_table ;

__attribute__((used)) static struct expr *
find_avail_set (int regno, rtx insn)
{


  struct expr *set1 = 0;
  while (1)
    {
      rtx src;
      struct expr *set = lookup_set (regno, &set_hash_table);



      while (set)
 {
   if (TEST_BIT (cprop_avin[BLOCK_NUM (insn)], set->bitmap_index))
     break;
   set = next_set (regno, set);
 }



      if (set == 0)
 break;

      gcc_assert (GET_CODE (set->expr) == SET);

      src = SET_SRC (set->expr);
      if (gcse_constant_p (src) || oprs_not_set_p (src, insn))
 set1 = set;



      if (! REG_P (src))
 break;



      regno = REGNO (src);
    }



  return set1;
}
