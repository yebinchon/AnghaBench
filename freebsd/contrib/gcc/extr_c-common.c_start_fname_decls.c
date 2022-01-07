
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_2__ {void** decl; } ;


 void* NULL_TREE ;
 void* build_int_cst (void*,unsigned int) ;
 TYPE_1__* fname_vars ;
 void* saved_function_name_decls ;
 void* tree_cons (void*,void*,void*) ;

void
start_fname_decls (void)
{
  unsigned ix;
  tree saved = NULL_TREE;

  for (ix = 0; fname_vars[ix].decl; ix++)
    {
      tree decl = *fname_vars[ix].decl;

      if (decl)
 {
   saved = tree_cons (decl, build_int_cst (NULL_TREE, ix), saved);
   *fname_vars[ix].decl = NULL_TREE;
 }
    }
  if (saved || saved_function_name_decls)


    saved_function_name_decls = tree_cons (saved, NULL_TREE,
        saved_function_name_decls);
}
