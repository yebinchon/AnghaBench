
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {struct table_elt* next_same_hash; } ;


 int CLEAR_HARD_REG_SET (int ) ;
 int HASH_SIZE ;
 int cse_reg_info_timestamp ;
 struct table_elt* free_element_chain ;
 int hard_regs_in_table ;
 scalar_t__ next_qty ;
 scalar_t__ prev_insn ;
 scalar_t__ prev_insn_cc0 ;
 struct table_elt** table ;
 scalar_t__ table_size ;

__attribute__((used)) static void
new_basic_block (void)
{
  int i;

  next_qty = 0;


  cse_reg_info_timestamp++;


  CLEAR_HARD_REG_SET (hard_regs_in_table);




  for (i = 0; i < HASH_SIZE; i++)
    {
      struct table_elt *first;

      first = table[i];
      if (first != ((void*)0))
 {
   struct table_elt *last = first;

   table[i] = ((void*)0);

   while (last->next_same_hash != ((void*)0))
     last = last->next_same_hash;




   last->next_same_hash = free_element_chain;
   free_element_chain = first;
 }
    }

  table_size = 0;





}
