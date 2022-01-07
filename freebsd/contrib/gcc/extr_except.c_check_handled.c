
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ lang_eh_type_covers (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
check_handled (tree handled, tree type)
{
  tree t;


  if (! lang_eh_type_covers)
    {
      for (t = handled; t ; t = TREE_CHAIN (t))
 if (TREE_VALUE (t) == type)
   return 1;
    }
  else
    {
      for (t = handled; t ; t = TREE_CHAIN (t))
 if ((*lang_eh_type_covers) (TREE_VALUE (t), type))
   return 1;
    }

  return 0;
}
