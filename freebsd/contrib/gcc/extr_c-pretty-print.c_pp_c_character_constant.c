
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_pretty_printer ;


 scalar_t__ TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ host_integerp (scalar_t__,int ) ;
 int pp_c_char (int *,int ) ;
 int pp_character (int *,char) ;
 int pp_quote (int *) ;
 int pp_scalar (int *,char*,unsigned int) ;
 int tree_low_cst (scalar_t__,int ) ;
 scalar_t__ wchar_type_node ;

__attribute__((used)) static void
pp_c_character_constant (c_pretty_printer *pp, tree c)
{
  tree type = TREE_TYPE (c);
  if (type == wchar_type_node)
    pp_character (pp, 'L');
  pp_quote (pp);
  if (host_integerp (c, TYPE_UNSIGNED (type)))
    pp_c_char (pp, tree_low_cst (c, TYPE_UNSIGNED (type)));
  else
    pp_scalar (pp, "\\x%x", (unsigned) TREE_INT_CST_LOW (c));
  pp_quote (pp);
}
