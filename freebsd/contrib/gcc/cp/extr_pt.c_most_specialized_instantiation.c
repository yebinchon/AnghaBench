
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_TEMPLATE_RESULT (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ get_bindings (int ,int ,scalar_t__,int) ;
 int processing_template_decl ;

tree
most_specialized_instantiation (tree templates)
{
  tree fn, champ;

  ++processing_template_decl;

  champ = templates;
  for (fn = TREE_CHAIN (templates); fn; fn = TREE_CHAIN (fn))
    {
      int fate = 0;

      if (get_bindings (TREE_VALUE (champ),
   DECL_TEMPLATE_RESULT (TREE_VALUE (fn)),
   NULL_TREE, 0))
 fate--;

      if (get_bindings (TREE_VALUE (fn),
   DECL_TEMPLATE_RESULT (TREE_VALUE (champ)),
   NULL_TREE, 0))
 fate++;

      if (fate == -1)
 champ = fn;
      else if (!fate)
 {


   fn = TREE_CHAIN (fn);
   champ = fn;
   if (!fn)
     break;
 }
    }

  if (champ)


    for (fn = templates; fn != champ; fn = TREE_CHAIN (fn))
      if (get_bindings (TREE_VALUE (champ),
   DECL_TEMPLATE_RESULT (TREE_VALUE (fn)),
   NULL_TREE, 0)
   || !get_bindings (TREE_VALUE (fn),
       DECL_TEMPLATE_RESULT (TREE_VALUE (champ)),
       NULL_TREE, 0))
 {
   champ = NULL_TREE;
   break;
 }

  processing_template_decl--;

  if (!champ)
    return error_mark_node;

  return champ;
}
