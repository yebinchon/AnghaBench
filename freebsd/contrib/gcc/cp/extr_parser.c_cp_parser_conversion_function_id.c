
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ scope; scalar_t__ qualifying_scope; scalar_t__ object_scope; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ NULL_TREE ;
 int RID_OPERATOR ;
 scalar_t__ cp_parser_conversion_type_id (TYPE_1__*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ mangle_conv_op_name_for_type (scalar_t__) ;
 int pop_scope (scalar_t__) ;
 scalar_t__ push_scope (scalar_t__) ;

__attribute__((used)) static tree
cp_parser_conversion_function_id (cp_parser* parser)
{
  tree type;
  tree saved_scope;
  tree saved_qualifying_scope;
  tree saved_object_scope;
  tree pushed_scope = NULL_TREE;


  if (!cp_parser_require_keyword (parser, RID_OPERATOR, "`operator'"))
    return error_mark_node;



  saved_scope = parser->scope;
  saved_qualifying_scope = parser->qualifying_scope;
  saved_object_scope = parser->object_scope;
  if (saved_scope)
    pushed_scope = push_scope (saved_scope);

  type = cp_parser_conversion_type_id (parser);

  if (pushed_scope)
    pop_scope (pushed_scope);

  parser->scope = saved_scope;
  parser->qualifying_scope = saved_qualifying_scope;
  parser->object_scope = saved_object_scope;

  if (type == error_mark_node)
    return error_mark_node;
  return mangle_conv_op_name_for_type (type);
}
