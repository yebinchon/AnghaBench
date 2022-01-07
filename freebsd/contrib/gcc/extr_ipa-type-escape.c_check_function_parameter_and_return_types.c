
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 int EXPOSED_PARAMETER ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ get_canon_type (scalar_t__,int,int) ;
 int mark_interesting_type (scalar_t__,int ) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static void
check_function_parameter_and_return_types (tree fn, bool escapes)
{
  tree arg;

  if (TYPE_ARG_TYPES (TREE_TYPE (fn)))
    {
      for (arg = TYPE_ARG_TYPES (TREE_TYPE (fn));
    arg && TREE_VALUE (arg) != void_type_node;
    arg = TREE_CHAIN (arg))
 {
   tree type = get_canon_type (TREE_VALUE (arg), 0, 0);
   if (escapes)
     mark_interesting_type (type, EXPOSED_PARAMETER);
 }
    }
  else
    {





      for (arg = DECL_ARGUMENTS (fn); arg; arg = TREE_CHAIN (arg))
 {
   tree type = get_canon_type (TREE_TYPE (arg), 0, 0);
   if (escapes)
     mark_interesting_type (type, EXPOSED_PARAMETER);
 }
    }
  if (escapes)
    {
      tree type = get_canon_type (TREE_TYPE (TREE_TYPE (fn)), 0, 0);
      mark_interesting_type (type, EXPOSED_PARAMETER);
    }
}
