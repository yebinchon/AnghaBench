
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct arg_lookup {void* functions; void* namespaces; void* classes; void* args; void* name; } ;


 void* NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,void*) ;
 scalar_t__ TREE_CODE (void*) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ VAR_DECL ;
 int arg_assoc_args (struct arg_lookup*,void*) ;
 int error (char*,void*) ;
 void* error_mark_node ;
 int is_overloaded_fn (void*) ;
 void* remove_hidden_names (void*) ;
 int timevar_push (int ) ;

tree
lookup_arg_dependent (tree name, tree fns, tree args)
{
  struct arg_lookup k;

  timevar_push (TV_NAME_LOOKUP);




  fns = remove_hidden_names (fns);

  k.name = name;
  k.args = args;
  k.functions = fns;
  k.classes = NULL_TREE;






  k.namespaces = NULL_TREE;

  arg_assoc_args (&k, args);

  fns = k.functions;

  if (fns
      && TREE_CODE (fns) != VAR_DECL
      && !is_overloaded_fn (fns))
    {
      error ("argument dependent lookup finds %q+D", fns);
      error ("  in call to %qD", name);
      fns = error_mark_node;
    }

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, fns);
}
