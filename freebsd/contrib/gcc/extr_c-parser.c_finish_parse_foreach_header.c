
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int build_tree_list (int ,int ) ;
 int c_parser_consume_token (int *) ;
 TYPE_1__ c_parser_initializer (int *) ;
 int check_for_loop_decls () ;
 int finish_init () ;
 int flag_isoc99 ;
 int gcc_assert (int ) ;

__attribute__((used)) static tree
finish_parse_foreach_header (c_parser *parser, tree foreach_elem_selector)
{
  tree res;
  int save_flag_isoc99 = flag_isoc99;
  gcc_assert (foreach_elem_selector);

  c_parser_consume_token (parser);
  res = build_tree_list (foreach_elem_selector, c_parser_initializer (parser).value);
  finish_init ();
  flag_isoc99 = 1;
  check_for_loop_decls ();
  flag_isoc99 = save_flag_isoc99;
  return res;
}
