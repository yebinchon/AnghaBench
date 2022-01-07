
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_SUPERCONTEXT (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ TRANSLATION_UNIT_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 int gcc_unreachable () ;




int
same_translation_unit_p (tree t1, tree t2)
{
  while (t1 && TREE_CODE (t1) != TRANSLATION_UNIT_DECL)
    switch (TREE_CODE_CLASS (TREE_CODE (t1)))
      {
      case 130:
 t1 = DECL_CONTEXT (t1); break;
      case 128:
 t1 = TYPE_CONTEXT (t1); break;
      case 129:
 t1 = BLOCK_SUPERCONTEXT (t1); break;
      default: gcc_unreachable ();
      }

  while (t2 && TREE_CODE (t2) != TRANSLATION_UNIT_DECL)
    switch (TREE_CODE_CLASS (TREE_CODE (t2)))
      {
      case 130:
 t2 = DECL_CONTEXT (t2); break;
      case 128:
 t2 = TYPE_CONTEXT (t2); break;
      case 129:
 t2 = BLOCK_SUPERCONTEXT (t2); break;
      default: gcc_unreachable ();
      }

  return t1 == t2;
}
