
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ formals_style ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int affix_data_type (char const*) ;
 scalar_t__ ansi ;
 char const* concat (char const*,char const*,char*,...) ;
 int data_type ;
 char* gen_type (char*,scalar_t__,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static const char *
gen_formal_list_for_type (tree fntype, formals_style style)
{
  const char *formal_list = "";
  tree formal_type;

  if (style != ansi)
    return "()";

  formal_type = TYPE_ARG_TYPES (fntype);
  while (formal_type && TREE_VALUE (formal_type) != void_type_node)
    {
      const char *this_type;

      if (*formal_list)
 formal_list = concat (formal_list, ", ", ((void*)0));

      this_type = gen_type ("", TREE_VALUE (formal_type), ansi);
      formal_list
 = ((strlen (this_type))
    ? concat (formal_list, affix_data_type (this_type), ((void*)0))
    : concat (formal_list, data_type, ((void*)0)));

      formal_type = TREE_CHAIN (formal_type);
    }
  if (!*formal_list)
    {
      if (TYPE_ARG_TYPES (fntype))

 formal_list = "void";
      else
 formal_list = "/* ??? */";
    }
  else
    {



      if (!formal_type)
 formal_list = concat (formal_list, ", ...", ((void*)0));
    }

  return concat (" (", formal_list, ")", ((void*)0));
}
