
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int * DECL_ARGUMENTS (scalar_t__ const) ;
 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 int * NULL_TREE ;
 int * TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int gcc_assert (int ) ;
 scalar_t__ void_type_node ;
 int write_char (char) ;
 int write_type (scalar_t__) ;

__attribute__((used)) static void
write_method_parms (tree parm_types, const int method_p, const tree decl)
{
  tree first_parm_type;
  tree parm_decl = decl ? DECL_ARGUMENTS (decl) : NULL_TREE;



  int varargs_p = 1;
  if (method_p)
    {
      parm_types = TREE_CHAIN (parm_types);
      parm_decl = parm_decl ? TREE_CHAIN (parm_decl) : NULL_TREE;

      while (parm_decl && DECL_ARTIFICIAL (parm_decl))
 {
   parm_types = TREE_CHAIN (parm_types);
   parm_decl = TREE_CHAIN (parm_decl);
 }
    }

  for (first_parm_type = parm_types;
       parm_types;
       parm_types = TREE_CHAIN (parm_types))
    {
      tree parm = TREE_VALUE (parm_types);
      if (parm == void_type_node)
 {



   if (parm_types == first_parm_type)
     write_type (parm);


   varargs_p = 0;

   gcc_assert (TREE_CHAIN (parm_types) == ((void*)0));
 }
      else
 write_type (parm);
    }

  if (varargs_p)

    write_char ('z');
}
