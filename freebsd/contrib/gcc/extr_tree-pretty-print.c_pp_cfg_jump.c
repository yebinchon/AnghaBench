
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int pretty_printer ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int dump_generic_node (int *,int ,int ,int ,int) ;
 scalar_t__ first_stmt (TYPE_1__*) ;
 int pp_decimal_int (int *,int ) ;
 int pp_semicolon (int *) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
pp_cfg_jump (pretty_printer *buffer, basic_block bb)
{
  tree stmt;

  stmt = first_stmt (bb);

  pp_string (buffer, "goto <bb ");
  pp_decimal_int (buffer, bb->index);
  pp_string (buffer, ">");
  if (stmt && TREE_CODE (stmt) == LABEL_EXPR)
    {
      pp_string (buffer, " (");
      dump_generic_node (buffer, LABEL_EXPR_LABEL (stmt), 0, 0, 0);
      pp_string (buffer, ")");
    }
  pp_semicolon (buffer);
}
