
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
struct TYPE_2__ {unsigned int rid; scalar_t__* decl; int pretty; } ;


 int IS_EMPTY_STMT (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int UNKNOWN_LOCATION ;
 int current_function_decl ;
 TYPE_1__* fname_vars ;
 scalar_t__ input_line ;
 int input_location ;
 scalar_t__ make_fname_decl (scalar_t__,int ) ;
 int pedwarn (char*,scalar_t__) ;
 scalar_t__ pop_stmt_list (scalar_t__) ;
 scalar_t__ push_stmt_list () ;
 int saved_function_name_decls ;
 scalar_t__ stub1 (scalar_t__,int ) ;
 int tree_cons (scalar_t__,scalar_t__,int ) ;

tree
fname_decl (unsigned int rid, tree id)
{
  unsigned ix;
  tree decl = NULL_TREE;

  for (ix = 0; fname_vars[ix].decl; ix++)
    if (fname_vars[ix].rid == rid)
      break;

  decl = *fname_vars[ix].decl;
  if (!decl)
    {





      tree stmts;
      location_t saved_location = input_location;



      input_line = 0;


      stmts = push_stmt_list ();
      decl = (*make_fname_decl) (id, fname_vars[ix].pretty);
      stmts = pop_stmt_list (stmts);
      if (!IS_EMPTY_STMT (stmts))
 saved_function_name_decls
   = tree_cons (decl, stmts, saved_function_name_decls);
      *fname_vars[ix].decl = decl;
      input_location = saved_location;
    }
  if (!ix && !current_function_decl)
    pedwarn ("%qD is not defined outside of function scope", decl);

  return decl;
}
