
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int * find_list_elem (int ,int *) ;
 int remove_list_node (int *) ;

rtx
remove_list_elem (rtx elem, rtx *listp)
{
  rtx node;

  listp = find_list_elem (elem, listp);
  node = *listp;
  remove_list_node (listp);
  return node;
}
