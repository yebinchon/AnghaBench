
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_14__ {char* type_definition_forbidden_message; } ;
typedef TYPE_1__ cp_parser ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;


 int CPP_EQ ;
 int CP_PARSER_DECLARATOR_NAMED ;
 int LOOKUP_ONLYCONVERTING ;
 scalar_t__ NULL_TREE ;
 scalar_t__ convert_from_reference (scalar_t__) ;
 int cp_finish_decl (scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 int cp_parser_abort_tentative_parse (TYPE_1__*) ;
 scalar_t__ cp_parser_asm_specification_opt (TYPE_1__*) ;
 scalar_t__ cp_parser_attributes_opt (TYPE_1__*) ;
 scalar_t__ cp_parser_constant_expression (TYPE_1__*,int,int*) ;
 int * cp_parser_declarator (TYPE_1__*,int ,int *,int *,int) ;
 int cp_parser_error_occurred (TYPE_1__*) ;
 scalar_t__ cp_parser_expression (TYPE_1__*,int) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_type_specifier_seq (TYPE_1__*,int,int *) ;
 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 int pop_scope (scalar_t__) ;
 scalar_t__ start_decl (int *,int *,int,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static tree
cp_parser_condition (cp_parser* parser)
{
  cp_decl_specifier_seq type_specifiers;
  const char *saved_message;


  cp_parser_parse_tentatively (parser);


  saved_message = parser->type_definition_forbidden_message;
  parser->type_definition_forbidden_message
    = "types may not be defined in conditions";

  cp_parser_type_specifier_seq (parser, 1,
    &type_specifiers);

  parser->type_definition_forbidden_message = saved_message;

  if (!cp_parser_error_occurred (parser))
    {
      tree decl;
      tree asm_specification;
      tree attributes;
      cp_declarator *declarator;
      tree initializer = NULL_TREE;


      declarator = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_NAMED,
                              ((void*)0),
                          ((void*)0),
                   0);

      attributes = cp_parser_attributes_opt (parser);

      asm_specification = cp_parser_asm_specification_opt (parser);







      cp_parser_require (parser, CPP_EQ, "`='");


      if (cp_parser_parse_definitely (parser))
 {
   tree pushed_scope;
   bool non_constant_p;


   decl = start_decl (declarator, &type_specifiers,
                          1,
        attributes, NULL_TREE,
        &pushed_scope);

   initializer
     = cp_parser_constant_expression (parser,
                                   1,
          &non_constant_p);
   if (!non_constant_p)
     initializer = fold_non_dependent_expr (initializer);


   cp_finish_decl (decl,
     initializer, !non_constant_p,
     asm_specification,
     LOOKUP_ONLYCONVERTING);

   if (pushed_scope)
     pop_scope (pushed_scope);

   return convert_from_reference (decl);
 }
    }


  else
    cp_parser_abort_tentative_parse (parser);


  return cp_parser_expression (parser, 0);
}
