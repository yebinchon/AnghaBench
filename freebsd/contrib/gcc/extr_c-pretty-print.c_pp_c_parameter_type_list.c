
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ c_pretty_printer ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int pp_abstract_declarator (TYPE_1__*,scalar_t__) ;
 int pp_c_flag_abstract ;
 int pp_c_identifier (TYPE_1__*,char*) ;
 int pp_c_left_paren (TYPE_1__*) ;
 int pp_c_right_paren (TYPE_1__*) ;
 int pp_declaration_specifiers (TYPE_1__*,scalar_t__) ;
 int pp_declarator (TYPE_1__*,scalar_t__) ;
 int pp_separate_with (TYPE_1__*,char) ;
 scalar_t__ void_list_node ;

void
pp_c_parameter_type_list (c_pretty_printer *pp, tree t)
{
  bool want_parm_decl = DECL_P (t) && !(pp->flags & pp_c_flag_abstract);
  tree parms = want_parm_decl ? DECL_ARGUMENTS (t) : TYPE_ARG_TYPES (t);
  pp_c_left_paren (pp);
  if (parms == void_list_node)
    pp_c_identifier (pp, "void");
  else
    {
      bool first = 1;
      for ( ; parms && parms != void_list_node; parms = TREE_CHAIN (parms))
 {
   if (!first)
     pp_separate_with (pp, ',');
   first = 0;
   pp_declaration_specifiers
     (pp, want_parm_decl ? parms : TREE_VALUE (parms));
   if (want_parm_decl)
     pp_declarator (pp, parms);
   else
     pp_abstract_declarator (pp, TREE_VALUE (parms));
 }
    }
  pp_c_right_paren (pp);
}
