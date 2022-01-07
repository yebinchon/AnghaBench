
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ls_expr {unsigned int hash_index; struct ls_expr* next; struct expr* expr; int pattern; int invalid; } ;
struct expr {int expr; struct expr* next_same_hash; } ;
struct TYPE_2__ {unsigned int size; struct expr** table; } ;


 scalar_t__ dump_file ;
 scalar_t__ expr_equiv_p (int ,int ) ;
 TYPE_1__ expr_hash_table ;
 int free_ldst_entry (struct ls_expr*) ;
 int htab_remove_elt_with_hash (int ,struct ls_expr*,unsigned int) ;
 struct ls_expr* pre_ldst_mems ;
 int pre_ldst_table ;
 int print_ldst_list (scalar_t__) ;

__attribute__((used)) static void
trim_ld_motion_mems (void)
{
  struct ls_expr * * last = & pre_ldst_mems;
  struct ls_expr * ptr = pre_ldst_mems;

  while (ptr != ((void*)0))
    {
      struct expr * expr;


      if (! ptr->invalid)
 {

   unsigned int hash = ptr->hash_index % expr_hash_table.size;

   for (expr = expr_hash_table.table[hash];
        expr != ((void*)0);
        expr = expr->next_same_hash)
     if (expr_equiv_p (expr->expr, ptr->pattern))
       break;
 }
      else
 expr = (struct expr *) 0;

      if (expr)
 {

   ptr->expr = expr;
   last = & ptr->next;
   ptr = ptr->next;
 }
      else
 {
   *last = ptr->next;
   htab_remove_elt_with_hash (pre_ldst_table, ptr, ptr->hash_index);
   free_ldst_entry (ptr);
   ptr = * last;
 }
    }


  if (dump_file && pre_ldst_mems != ((void*)0))
    print_ldst_list (dump_file);
}
