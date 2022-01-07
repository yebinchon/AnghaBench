
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_11__ {TYPE_1__* context; scalar_t__ object_scope; scalar_t__ qualifying_scope; scalar_t__ scope; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_id_kind ;
struct TYPE_10__ {scalar_t__ object_type; } ;


 int BASELINK_ACCESS_BINFO (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 int BINFO_TYPE (int ) ;
 int CPP_DEREF ;
 int CP_ID_KIND_NONE ;
 int CP_ID_KIND_QUALIFIED ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SCALAR_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 int adjust_result_of_qualified_name_lookup (scalar_t__,int ,scalar_t__) ;
 scalar_t__ build_qualified_name (scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ build_x_arrow (scalar_t__) ;
 scalar_t__ complete_type_or_else (scalar_t__,scalar_t__) ;
 scalar_t__ cp_parser_id_expression (TYPE_2__*,int ,int,int*,int,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_2__*,char*) ;
 int cp_parser_optional_template_keyword (TYPE_2__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_pseudo_destructor_name (TYPE_2__*,scalar_t__*,scalar_t__*) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ finish_class_member_access_expr (scalar_t__,scalar_t__,int) ;
 scalar_t__ finish_pseudo_destructor_expr (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ non_reference (scalar_t__) ;
 int type_dependent_expression_p (scalar_t__) ;
 scalar_t__ unknown_type_node ;

__attribute__((used)) static tree
cp_parser_postfix_dot_deref_expression (cp_parser *parser,
     enum cpp_ttype token_type,
     tree postfix_expression,
     bool for_offsetof, cp_id_kind *idk)
{
  tree name;
  bool dependent_p;
  bool pseudo_destructor_p;
  tree scope = NULL_TREE;


  if (token_type == CPP_DEREF)
    postfix_expression = build_x_arrow (postfix_expression);

  dependent_p = type_dependent_expression_p (postfix_expression);

  parser->scope = NULL_TREE;
  parser->qualifying_scope = NULL_TREE;
  parser->object_scope = NULL_TREE;
  *idk = CP_ID_KIND_NONE;


  if (!dependent_p && TREE_TYPE (postfix_expression) != NULL_TREE)
    {
      scope = TREE_TYPE (postfix_expression);






      scope = non_reference (scope);

      if (scope == unknown_type_node)
 {
   error ("%qE does not have class type", postfix_expression);
   scope = NULL_TREE;
 }
      else
 scope = complete_type_or_else (scope, NULL_TREE);


      parser->context->object_type = scope;



      if (!scope)
 scope = error_mark_node;



      if (scope == error_mark_node)
 postfix_expression = error_mark_node;
    }


  pseudo_destructor_p = 0;



  if (scope && SCALAR_TYPE_P (scope))
    {
      tree s;
      tree type;

      cp_parser_parse_tentatively (parser);

      s = NULL_TREE;
      cp_parser_pseudo_destructor_name (parser, &s, &type);
      if (cp_parser_parse_definitely (parser))
 {
   pseudo_destructor_p = 1;
   postfix_expression
     = finish_pseudo_destructor_expr (postfix_expression,
          s, TREE_TYPE (type));
 }
    }

  if (!pseudo_destructor_p)
    {



      bool template_p;

      name = (cp_parser_id_expression
       (parser,
        cp_parser_optional_template_keyword (parser),
                               1,
        &template_p,
                         0,
                       0));
      if (parser->scope)
 *idk = CP_ID_KIND_QUALIFIED;



      if (TREE_CODE (name) == TYPE_DECL)
 {
   error ("invalid use of %qD", name);
   postfix_expression = error_mark_node;
 }
      else
 {
   if (name != error_mark_node && !BASELINK_P (name) && parser->scope)
     {
       name = build_qualified_name ( NULL_TREE,
        parser->scope,
        name,
        template_p);
       parser->scope = NULL_TREE;
       parser->qualifying_scope = NULL_TREE;
       parser->object_scope = NULL_TREE;
     }
   if (scope && name && BASELINK_P (name))
     adjust_result_of_qualified_name_lookup
       (name, BINFO_TYPE (BASELINK_ACCESS_BINFO (name)), scope);
   postfix_expression
     = finish_class_member_access_expr (postfix_expression, name,
            template_p);
 }
    }



  parser->context->object_type = NULL_TREE;



  if (!for_offsetof
      && (cp_parser_non_integral_constant_expression
   (parser, token_type == CPP_DEREF ? "'->'" : "`.'")))
    postfix_expression = error_mark_node;

  return postfix_expression;
}
