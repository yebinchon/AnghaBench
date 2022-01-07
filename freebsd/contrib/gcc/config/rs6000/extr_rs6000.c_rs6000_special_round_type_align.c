
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ DFmode ;
 scalar_t__ FIELD_DECL ;
 unsigned int MAX (unsigned int,int) ;
 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_FIELDS (int *) ;
 scalar_t__ TYPE_MODE (int *) ;
 int * error_mark_node ;

unsigned int
rs6000_special_round_type_align (tree type, unsigned int computed,
     unsigned int specified)
{
  unsigned int align = MAX (computed, specified);
  tree field = TYPE_FIELDS (type);


  while (field != ((void*)0) && TREE_CODE (field) != FIELD_DECL)
    field = TREE_CHAIN (field);

  if (field != ((void*)0) && field != type)
    {
      type = TREE_TYPE (field);
      while (TREE_CODE (type) == ARRAY_TYPE)
 type = TREE_TYPE (type);

      if (type != error_mark_node && TYPE_MODE (type) == DFmode)
 align = MAX (align, 64);
    }

  return align;
}
