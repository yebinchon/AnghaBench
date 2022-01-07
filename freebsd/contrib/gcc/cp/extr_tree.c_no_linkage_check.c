
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int CLASS_TYPE_P (int ) ;



 int NULL_TREE ;




 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_PUBLIC (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ANONYMOUS_P (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int TYPE_MAIN_DECL (int ) ;
 int TYPE_METHOD_BASETYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;

 int decl_function_context (int ) ;
 scalar_t__ processing_template_decl ;
 int void_list_node ;

tree
no_linkage_check (tree t, bool relaxed_p)
{
  tree r;



  if (processing_template_decl)
    return NULL_TREE;

  switch (TREE_CODE (t))
    {
      tree fn;

    case 130:
      if (TYPE_PTRMEMFUNC_P (t))
 goto ptrmem;

    case 128:
      if (!CLASS_TYPE_P (t))
 return NULL_TREE;

    case 135:
      if (TYPE_ANONYMOUS_P (t))
 return t;
      fn = decl_function_context (TYPE_MAIN_DECL (t));
      if (fn && (!relaxed_p || !TREE_PUBLIC (fn)))
 return t;
      return NULL_TREE;

    case 136:
    case 131:
    case 129:
      return no_linkage_check (TREE_TYPE (t), relaxed_p);

    case 132:
    ptrmem:
      r = no_linkage_check (TYPE_PTRMEM_POINTED_TO_TYPE (t),
       relaxed_p);
      if (r)
 return r;
      return no_linkage_check (TYPE_PTRMEM_CLASS_TYPE (t), relaxed_p);

    case 133:
      r = no_linkage_check (TYPE_METHOD_BASETYPE (t), relaxed_p);
      if (r)
 return r;

    case 134:
      {
 tree parm;
 for (parm = TYPE_ARG_TYPES (t);
      parm && parm != void_list_node;
      parm = TREE_CHAIN (parm))
   {
     r = no_linkage_check (TREE_VALUE (parm), relaxed_p);
     if (r)
       return r;
   }
 return no_linkage_check (TREE_TYPE (t), relaxed_p);
      }

    default:
      return NULL_TREE;
    }
}
