
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct occr {int deleted_p; int insn; struct occr* next; } ;
struct expr {int bitmap_index; int * reaching_reg; struct occr* antic_occr; struct expr* next_same_hash; } ;
typedef int rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {unsigned int size; struct expr** table; } ;
struct TYPE_4__ {size_t index; } ;


 TYPE_1__* BLOCK_FOR_INSN (int ) ;
 int GET_MODE (int ) ;
 int INSN_CUID (int ) ;
 int INSN_UID (int ) ;
 int REGNO (int *) ;
 int SET_BIT (int ,int ) ;
 int SET_DEST (int ) ;
 scalar_t__ TEST_BIT (int ,int) ;
 int delete_insn (int ) ;
 scalar_t__ dump_file ;
 TYPE_2__ expr_hash_table ;
 int fprintf (scalar_t__,char*,int,int) ;
 int gcse_emit_move_after (int *,int ,int ) ;
 int gcse_subst_count ;
 int * gen_reg_rtx (int ) ;
 int * pre_delete_map ;
 int pre_redundant_insns ;
 int single_set (int ) ;

__attribute__((used)) static int
pre_delete (void)
{
  unsigned int i;
  int changed;
  struct expr *expr;
  struct occr *occr;

  changed = 0;
  for (i = 0; i < expr_hash_table.size; i++)
    for (expr = expr_hash_table.table[i];
  expr != ((void*)0);
  expr = expr->next_same_hash)
      {
 int indx = expr->bitmap_index;




 for (occr = expr->antic_occr; occr != ((void*)0); occr = occr->next)
   {
     rtx insn = occr->insn;
     rtx set;
     basic_block bb = BLOCK_FOR_INSN (insn);


     if (TEST_BIT (pre_delete_map[bb->index], indx)
  && (set = single_set (insn)) != 0)
       {



  if (expr->reaching_reg == ((void*)0))
    expr->reaching_reg
      = gen_reg_rtx (GET_MODE (SET_DEST (set)));

  gcse_emit_move_after (expr->reaching_reg, SET_DEST (set), insn);
  delete_insn (insn);
  occr->deleted_p = 1;
  SET_BIT (pre_redundant_insns, INSN_CUID (insn));
  changed = 1;
  gcse_subst_count++;

  if (dump_file)
    {
      fprintf (dump_file,
        "PRE: redundant insn %d (expression %d) in ",
          INSN_UID (insn), indx);
      fprintf (dump_file, "bb %d, reaching reg is %d\n",
        bb->index, REGNO (expr->reaching_reg));
    }
       }
   }
      }

  return changed;
}
