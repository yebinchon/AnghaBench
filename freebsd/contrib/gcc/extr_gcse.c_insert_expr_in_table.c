
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {void* insn; scalar_t__ deleted_p; struct occr* next; } ;
struct hash_table {int n_elems; struct expr** table; int size; } ;
struct expr {struct occr* avail_occr; struct occr* antic_occr; struct expr* next_same_hash; scalar_t__ bitmap_index; void* expr; } ;
typedef void* rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BLOCK_NUM (void*) ;
 int bytes_used ;
 int expr_equiv_p (void*,void*) ;
 void* gcse_alloc (int) ;
 unsigned int hash_expr (void*,int,int*,int ) ;

__attribute__((used)) static void
insert_expr_in_table (rtx x, enum machine_mode mode, rtx insn, int antic_p,
        int avail_p, struct hash_table *table)
{
  int found, do_not_record_p;
  unsigned int hash;
  struct expr *cur_expr, *last_expr = ((void*)0);
  struct occr *antic_occr, *avail_occr;

  hash = hash_expr (x, mode, &do_not_record_p, table->size);




  if (do_not_record_p)
    return;

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


      cur_expr->expr = x;
      cur_expr->bitmap_index = table->n_elems++;
      cur_expr->next_same_hash = ((void*)0);
      cur_expr->antic_occr = ((void*)0);
      cur_expr->avail_occr = ((void*)0);
    }


  if (antic_p)
    {
      antic_occr = cur_expr->antic_occr;

      if (antic_occr && BLOCK_NUM (antic_occr->insn) != BLOCK_NUM (insn))
 antic_occr = ((void*)0);

      if (antic_occr)



 ;
      else
 {

   antic_occr = gcse_alloc (sizeof (struct occr));
   bytes_used += sizeof (struct occr);
   antic_occr->insn = insn;
   antic_occr->next = cur_expr->antic_occr;
   antic_occr->deleted_p = 0;
   cur_expr->antic_occr = antic_occr;
 }
    }

  if (avail_p)
    {
      avail_occr = cur_expr->avail_occr;

      if (avail_occr && BLOCK_NUM (avail_occr->insn) == BLOCK_NUM (insn))
 {




   avail_occr->insn = insn;
 }
      else
 {

   avail_occr = gcse_alloc (sizeof (struct occr));
   bytes_used += sizeof (struct occr);
   avail_occr->insn = insn;
   avail_occr->next = cur_expr->avail_occr;
   avail_occr->deleted_p = 0;
   cur_expr->avail_occr = avail_occr;
 }
    }
}
