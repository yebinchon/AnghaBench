
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {void* insn; scalar_t__ deleted_p; struct occr* next; } ;
struct hash_table {int n_elems; struct expr** table; int size; } ;
struct expr {struct occr* avail_occr; int * antic_occr; struct expr* next_same_hash; scalar_t__ bitmap_index; int expr; } ;
typedef void* rtx ;


 scalar_t__ BLOCK_NUM (void*) ;
 scalar_t__ GET_CODE (void*) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SET ;
 int SET_DEST (void*) ;
 int bytes_used ;
 int copy_rtx (void*) ;
 int expr_equiv_p (int ,void*) ;
 int gcc_assert (int) ;
 void* gcse_alloc (int) ;
 unsigned int hash_set (int ,int ) ;

__attribute__((used)) static void
insert_set_in_table (rtx x, rtx insn, struct hash_table *table)
{
  int found;
  unsigned int hash;
  struct expr *cur_expr, *last_expr = ((void*)0);
  struct occr *cur_occr;

  gcc_assert (GET_CODE (x) == SET && REG_P (SET_DEST (x)));

  hash = hash_set (REGNO (SET_DEST (x)), table->size);

  cur_expr = table->table[hash];
  found = 0;

  while (cur_expr && 0 == (found = expr_equiv_p (cur_expr->expr, x)))
    {


      last_expr = cur_expr;
      cur_expr = cur_expr->next_same_hash;
    }

  if (! found)
    {
      cur_expr = gcse_alloc (sizeof (struct expr));
      bytes_used += sizeof (struct expr);
      if (table->table[hash] == ((void*)0))

 table->table[hash] = cur_expr;
      else

 last_expr->next_same_hash = cur_expr;




      cur_expr->expr = copy_rtx (x);
      cur_expr->bitmap_index = table->n_elems++;
      cur_expr->next_same_hash = ((void*)0);
      cur_expr->antic_occr = ((void*)0);
      cur_expr->avail_occr = ((void*)0);
    }


  cur_occr = cur_expr->avail_occr;

  if (cur_occr && BLOCK_NUM (cur_occr->insn) == BLOCK_NUM (insn))
    {




      cur_occr->insn = insn;
    }
  else
    {

      cur_occr = gcse_alloc (sizeof (struct occr));
      bytes_used += sizeof (struct occr);

   cur_occr->insn = insn;
   cur_occr->next = cur_expr->avail_occr;
   cur_occr->deleted_p = 0;
   cur_expr->avail_occr = cur_occr;
    }
}
