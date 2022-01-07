
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int location; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 scalar_t__ EXPR_P (int ) ;
 int SET_EXPR_LOCATION (int ,int ) ;
 int c_objc_common_truthvalue_conversion (int ) ;
 TYPE_2__ c_parser_expression_conv (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int error_mark_node ;

__attribute__((used)) static tree
c_parser_paren_condition (c_parser *parser)
{
  location_t loc;
  tree cond;
  if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    return error_mark_node;
  loc = c_parser_peek_token (parser)->location;
  cond = c_objc_common_truthvalue_conversion
    (c_parser_expression_conv (parser).value);
  if (EXPR_P (cond))
    SET_EXPR_LOCATION (cond, loc);
  c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
  return cond;
}
