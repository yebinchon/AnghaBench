
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DEFAULT_ARG ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 char* TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int can_convert_arg (scalar_t__,char*,scalar_t__,int ) ;
 int error (char*,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int local_variable_p_walkfn ;
 scalar_t__ walk_tree_without_duplicates (scalar_t__*,int ,int *) ;

tree
check_default_argument (tree decl, tree arg)
{
  tree var;
  tree decl_type;

  if (TREE_CODE (arg) == DEFAULT_ARG)



    return arg;

  if (TYPE_P (decl))
    {
      decl_type = decl;
      decl = NULL_TREE;
    }
  else
    decl_type = TREE_TYPE (decl);

  if (arg == error_mark_node
      || decl == error_mark_node
      || TREE_TYPE (arg) == error_mark_node
      || decl_type == error_mark_node)


    return error_mark_node;





  if (!TREE_TYPE (arg)
      || !can_convert_arg (decl_type, TREE_TYPE (arg), arg, LOOKUP_NORMAL))
    {
      if (decl)
 error ("default argument for %q#D has type %qT",
        decl, TREE_TYPE (arg));
      else
 error ("default argument for parameter of type %qT has type %qT",
        decl_type, TREE_TYPE (arg));

      return error_mark_node;
    }
  var = walk_tree_without_duplicates (&arg, local_variable_p_walkfn,
          ((void*)0));
  if (var)
    {
      error ("default argument %qE uses local variable %qD", arg, var);
      return error_mark_node;
    }


  return arg;
}
