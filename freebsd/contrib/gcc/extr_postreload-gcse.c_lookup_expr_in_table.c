
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int * avail_occr; int hash; int expr; } ;
typedef int rtx ;
typedef int hashval_t ;


 int INSERT ;
 int expr_obstack ;
 int expr_table ;
 int hash_expr (int ,int*) ;
 scalar_t__ htab_find_slot_with_hash (int ,struct expr*,int ,int ) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int obstack_free (int *,struct expr*) ;

__attribute__((used)) static struct expr *
lookup_expr_in_table (rtx pat)
{
  int do_not_record_p;
  struct expr **slot, *tmp_expr;
  hashval_t hash = hash_expr (pat, &do_not_record_p);

  if (do_not_record_p)
    return ((void*)0);

  tmp_expr = (struct expr *) obstack_alloc (&expr_obstack,
         sizeof (struct expr));
  tmp_expr->expr = pat;
  tmp_expr->hash = hash;
  tmp_expr->avail_occr = ((void*)0);

  slot = (struct expr **) htab_find_slot_with_hash (expr_table, tmp_expr,
                                                    hash, INSERT);
  obstack_free (&expr_obstack, tmp_expr);

  if (!slot)
    return ((void*)0);
  else
    return (*slot);
}
