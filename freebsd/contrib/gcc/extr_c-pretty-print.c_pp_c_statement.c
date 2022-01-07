
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int c_pretty_printer ;


 int dump_generic_node (int ,int *,int ,int ,int) ;
 int pp_base (int *) ;
 int pp_indentation (int *) ;
 scalar_t__ pp_needs_newline (int *) ;
 int pp_newline_and_indent (int *,int ) ;

void
pp_c_statement (c_pretty_printer *pp, tree stmt)
{
  if (stmt == ((void*)0))
    return;

  if (pp_needs_newline (pp))
    pp_newline_and_indent (pp, 0);

  dump_generic_node (pp_base (pp), stmt, pp_indentation (pp), 0, 1);
}
