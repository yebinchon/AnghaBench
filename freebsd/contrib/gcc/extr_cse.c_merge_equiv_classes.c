
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int mode; scalar_t__ in_memory; struct table_elt* next_same_value; int exp; struct table_elt* first_same_value; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 unsigned int HASH (int ,int) ;
 scalar_t__ REGNO (int ) ;
 int REGNO_QTY_VALID_P (scalar_t__) ;
 scalar_t__ REG_P (int ) ;
 int delete_reg_equiv (scalar_t__) ;
 scalar_t__ exp_equiv_p (int ,int ,int,int) ;
 scalar_t__ hash_arg_in_memory ;
 struct table_elt* insert (int ,struct table_elt*,unsigned int,int) ;
 scalar_t__ insert_regs (int ,struct table_elt*,int ) ;
 int rehash_using_reg (int ) ;
 int remove_from_table (struct table_elt*,unsigned int) ;
 int remove_pseudo_from_table (int ,unsigned int) ;

__attribute__((used)) static void
merge_equiv_classes (struct table_elt *class1, struct table_elt *class2)
{
  struct table_elt *elt, *next, *new;


  class1 = class1->first_same_value;
  class2 = class2->first_same_value;


  if (class1 == class2)
    return;

  for (elt = class2; elt; elt = next)
    {
      unsigned int hash;
      rtx exp = elt->exp;
      enum machine_mode mode = elt->mode;

      next = elt->next_same_value;




      if (REG_P (exp) || exp_equiv_p (exp, exp, 1, 0))
 {
   bool need_rehash = 0;

   hash_arg_in_memory = 0;
   hash = HASH (exp, mode);

   if (REG_P (exp))
     {
       need_rehash = REGNO_QTY_VALID_P (REGNO (exp));
       delete_reg_equiv (REGNO (exp));
     }

   if (REG_P (exp) && REGNO (exp) >= FIRST_PSEUDO_REGISTER)
     remove_pseudo_from_table (exp, hash);
   else
     remove_from_table (elt, hash);

   if (insert_regs (exp, class1, 0) || need_rehash)
     {
       rehash_using_reg (exp);
       hash = HASH (exp, mode);
     }
   new = insert (exp, class1, hash, mode);
   new->in_memory = hash_arg_in_memory;
 }
    }
}
