
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ BINFO_VTABLE (scalar_t__) ;
 int NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int accumulate_vtbl_inits (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (scalar_t__,int ) ;
 int initialize_vtable (scalar_t__,int ) ;

__attribute__((used)) static void
finish_vtbls (tree t)
{
  tree list;
  tree vbase;




  list = build_tree_list (BINFO_VTABLE (TYPE_BINFO (t)), NULL_TREE);
  accumulate_vtbl_inits (TYPE_BINFO (t), TYPE_BINFO (t),
    TYPE_BINFO (t), t, list);


  for (vbase = TYPE_BINFO (t); vbase; vbase = TREE_CHAIN (vbase))
    {
      if (!BINFO_VIRTUAL_P (vbase))
 continue;
      accumulate_vtbl_inits (vbase, vbase, TYPE_BINFO (t), t, list);
    }

  if (BINFO_VTABLE (TYPE_BINFO (t)))
    initialize_vtable (TYPE_BINFO (t), TREE_VALUE (list));
}
