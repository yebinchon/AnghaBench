
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int pretty_printer ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int dump_generic_node (int *,int ,int,int,int) ;
 scalar_t__ error_mark_node ;
 int pp_character (int *,char) ;
 int pp_space (int *) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
dump_function_declaration (pretty_printer *buffer, tree node,
      int spc, int flags)
{
  bool wrote_arg = 0;
  tree arg;

  pp_space (buffer);
  pp_character (buffer, '(');



  arg = TYPE_ARG_TYPES (node);
  while (arg && TREE_CHAIN (arg) && arg != error_mark_node)
    {
      wrote_arg = 1;
      dump_generic_node (buffer, TREE_VALUE (arg), spc, flags, 0);
      arg = TREE_CHAIN (arg);
      if (TREE_CHAIN (arg) && TREE_CODE (TREE_CHAIN (arg)) == TREE_LIST)
 {
   pp_character (buffer, ',');
   pp_space (buffer);
 }
    }

  if (!wrote_arg)
    pp_string (buffer, "void");

  pp_character (buffer, ')');
}
