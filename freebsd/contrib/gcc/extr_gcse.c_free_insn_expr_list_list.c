
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ EXPR_LIST ;
 scalar_t__ GET_CODE (int *) ;
 int * XEXP (int *,int) ;
 int free_EXPR_LIST_node (int *) ;
 int free_INSN_LIST_node (int *) ;

__attribute__((used)) static void
free_insn_expr_list_list (rtx *listp)
{
  rtx list, next;

  for (list = *listp; list ; list = next)
    {
      next = XEXP (list, 1);
      if (GET_CODE (list) == EXPR_LIST)
 free_EXPR_LIST_node (list);
      else
 free_INSN_LIST_node (list);
    }

  *listp = ((void*)0);
}
