
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;



 scalar_t__ BLOCK_SUPERCONTEXT (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;


 scalar_t__ NULL_TREE ;



 int TREE_CODE (scalar_t__) ;


 int gcc_unreachable () ;

tree
decl_type_context (tree decl)
{
  tree context = DECL_CONTEXT (decl);

  while (context)
    switch (TREE_CODE (context))
      {
      case 133:
      case 130:
 return NULL_TREE;

      case 131:
      case 128:
      case 132:
 return context;

      case 129:
      case 134:
 context = DECL_CONTEXT (context);
 break;

      case 135:
 context = BLOCK_SUPERCONTEXT (context);
 break;

      default:
 gcc_unreachable ();
      }

  return NULL_TREE;
}
