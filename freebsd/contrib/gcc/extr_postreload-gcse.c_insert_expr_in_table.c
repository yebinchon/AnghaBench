
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {void* insn; scalar_t__ deleted_p; struct occr* next; } ;
struct expr {struct occr* avail_occr; int hash; void* expr; } ;
typedef void* rtx ;
typedef int hashval_t ;


 scalar_t__ BLOCK_NUM (void*) ;
 int INSERT ;
 int expr_obstack ;
 int expr_table ;
 int hash_expr (void*,int*) ;
 scalar_t__ htab_find_slot_with_hash (int ,struct expr*,int ,int ) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int obstack_free (int *,struct expr*) ;
 int occr_obstack ;

__attribute__((used)) static void
insert_expr_in_table (rtx x, rtx insn)
{
  int do_not_record_p;
  hashval_t hash;
  struct expr *cur_expr, **slot;
  struct occr *avail_occr, *last_occr = ((void*)0);

  hash = hash_expr (x, &do_not_record_p);




  if (do_not_record_p)
    return;






  cur_expr = (struct expr *) obstack_alloc (&expr_obstack,
         sizeof (struct expr));
  cur_expr->expr = x;
  cur_expr->hash = hash;
  cur_expr->avail_occr = ((void*)0);

  slot = (struct expr **) htab_find_slot_with_hash (expr_table, cur_expr,
          hash, INSERT);

  if (! (*slot))

    *slot = cur_expr;
  else
    {


      obstack_free (&expr_obstack, cur_expr);
      cur_expr = *slot;
    }


  avail_occr = cur_expr->avail_occr;
  while (avail_occr && BLOCK_NUM (avail_occr->insn) != BLOCK_NUM (insn))
    {


      last_occr = avail_occr;
      avail_occr = avail_occr->next;
    }

  if (avail_occr)




    avail_occr->insn = insn;
  else
    {

      avail_occr = (struct occr *) obstack_alloc (&occr_obstack,
        sizeof (struct occr));


      if (cur_expr->avail_occr == ((void*)0))
        cur_expr->avail_occr = avail_occr;
      else
        last_occr->next = avail_occr;

      avail_occr->insn = insn;
      avail_occr->next = ((void*)0);
      avail_occr->deleted_p = 0;
    }
}
