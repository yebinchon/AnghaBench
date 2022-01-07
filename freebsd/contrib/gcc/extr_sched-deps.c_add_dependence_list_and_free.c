
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;


 int * XEXP (int *,int) ;
 int add_dependence (int *,int *,int) ;
 int free_INSN_LIST_node (int *) ;
 int sched_insns_conditions_mutex_p (int *,int *) ;

__attribute__((used)) static void
add_dependence_list_and_free (rtx insn, rtx *listp, int uncond,
         enum reg_note dep_type)
{
  rtx list, next;
  for (list = *listp, *listp = ((void*)0); list ; list = next)
    {
      next = XEXP (list, 1);
      if (uncond || ! sched_insns_conditions_mutex_p (insn, XEXP (list, 0)))
 add_dependence (insn, XEXP (list, 0), dep_type);
      free_INSN_LIST_node (list);
    }
}
