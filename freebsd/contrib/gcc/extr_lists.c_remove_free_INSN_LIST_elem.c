
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int free_INSN_LIST_node (int ) ;
 int remove_list_elem (int ,int *) ;

void
remove_free_INSN_LIST_elem (rtx elem, rtx *listp)
{
  free_INSN_LIST_node (remove_list_elem (elem, listp));
}
