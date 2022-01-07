
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct occr {int copied_p; int insn; struct occr* next; int deleted_p; } ;
struct expr {struct occr* avail_occr; struct occr* antic_occr; int * reaching_reg; struct expr* next_same_hash; } ;
typedef int rtx ;
struct TYPE_2__ {unsigned int size; struct expr** table; } ;


 int BLOCK_FOR_INSN (int ) ;
 int INSN_CUID (int ) ;
 scalar_t__ TEST_BIT (int ,int ) ;
 TYPE_1__ expr_hash_table ;
 int pre_expr_reaches_here_p (int ,struct expr*,int ) ;
 int pre_insert_copy_insn (struct expr*,int ) ;
 int pre_redundant_insns ;
 int update_ld_motion_stores (struct expr*) ;

__attribute__((used)) static void
pre_insert_copies (void)
{
  unsigned int i, added_copy;
  struct expr *expr;
  struct occr *occr;
  struct occr *avail;







  for (i = 0; i < expr_hash_table.size; i++)
    for (expr = expr_hash_table.table[i]; expr != ((void*)0); expr = expr->next_same_hash)
      {





 if (expr->reaching_reg == ((void*)0))
   continue;


 added_copy = 0;

 for (occr = expr->antic_occr; occr != ((void*)0); occr = occr->next)
   {
     if (! occr->deleted_p)
       continue;

     for (avail = expr->avail_occr; avail != ((void*)0); avail = avail->next)
       {
  rtx insn = avail->insn;


  if (avail->copied_p)
    continue;


  if (TEST_BIT (pre_redundant_insns, INSN_CUID (insn)))
    continue;


  if (! pre_expr_reaches_here_p (BLOCK_FOR_INSN (avail->insn),
            expr,
            BLOCK_FOR_INSN (occr->insn)))
    continue;

                added_copy = 1;


  pre_insert_copy_insn (expr, insn);
  avail->copied_p = 1;
       }
   }

   if (added_copy)
            update_ld_motion_stores (expr);
      }
}
