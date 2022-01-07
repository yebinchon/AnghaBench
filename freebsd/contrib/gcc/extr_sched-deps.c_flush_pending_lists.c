
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {int pending_flush_length; int last_pending_memory_flush; scalar_t__ pending_lists_length; int pending_write_mems; int pending_write_insns; int pending_read_mems; int pending_read_insns; } ;
typedef int rtx ;


 int NULL_RTX ;
 int REG_DEP_ANTI ;
 int REG_DEP_OUTPUT ;
 int add_dependence_list_and_free (int ,int *,int,int ) ;
 int alloc_INSN_LIST (int ,int ) ;
 int free_EXPR_LIST_list (int *) ;

__attribute__((used)) static void
flush_pending_lists (struct deps *deps, rtx insn, int for_read,
       int for_write)
{
  if (for_write)
    {
      add_dependence_list_and_free (insn, &deps->pending_read_insns, 1,
        REG_DEP_ANTI);
      free_EXPR_LIST_list (&deps->pending_read_mems);
    }

  add_dependence_list_and_free (insn, &deps->pending_write_insns, 1,
    for_read ? REG_DEP_ANTI : REG_DEP_OUTPUT);
  free_EXPR_LIST_list (&deps->pending_write_mems);
  deps->pending_lists_length = 0;

  add_dependence_list_and_free (insn, &deps->last_pending_memory_flush, 1,
    for_read ? REG_DEP_ANTI : REG_DEP_OUTPUT);
  deps->last_pending_memory_flush = alloc_INSN_LIST (insn, NULL_RTX);
  deps->pending_flush_length = 1;
}
