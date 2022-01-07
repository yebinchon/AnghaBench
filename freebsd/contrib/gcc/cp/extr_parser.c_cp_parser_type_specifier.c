
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef scalar_t__ tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_20__ {int keyword; } ;
typedef TYPE_2__ cp_token ;
typedef int cp_parser_flags ;
struct TYPE_21__ {int lexer; } ;
typedef TYPE_3__ cp_parser ;
struct TYPE_22__ {int any_specifiers_p; scalar_t__* specs; } ;
typedef TYPE_4__ cp_decl_specifier_seq ;
typedef scalar_t__ cp_decl_spec ;
struct TYPE_19__ {scalar_t__ value; } ;
struct TYPE_18__ {TYPE_1__ u; } ;


 int CP_PARSER_FLAGS_OPTIONAL ;
 scalar_t__ NULL_TREE ;
 TYPE_17__* cp_lexer_consume_token (int ) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_class_specifier (TYPE_3__*) ;
 scalar_t__ cp_parser_elaborated_type_specifier (TYPE_3__*,int,int) ;
 scalar_t__ cp_parser_enum_specifier (TYPE_3__*) ;
 int cp_parser_error (TYPE_3__*,char*) ;
 int cp_parser_parse_definitely (TYPE_3__*) ;
 int cp_parser_parse_tentatively (TYPE_3__*) ;
 int cp_parser_set_decl_spec_type (TYPE_4__*,scalar_t__,int) ;
 scalar_t__ cp_parser_simple_type_specifier (TYPE_3__*,TYPE_4__*,int) ;
 scalar_t__ ds_complex ;
 scalar_t__ ds_const ;
 scalar_t__ ds_friend ;
 scalar_t__ ds_last ;
 scalar_t__ ds_restrict ;
 scalar_t__ ds_volatile ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static tree
cp_parser_type_specifier (cp_parser* parser,
     cp_parser_flags flags,
     cp_decl_specifier_seq *decl_specs,
     bool is_declaration,
     int* declares_class_or_enum,
     bool* is_cv_qualifier)
{
  tree type_spec = NULL_TREE;
  cp_token *token;
  enum rid keyword;
  cp_decl_spec ds = ds_last;


  if (declares_class_or_enum)
    *declares_class_or_enum = 0;

  if (is_cv_qualifier)
    *is_cv_qualifier = 0;

  token = cp_lexer_peek_token (parser->lexer);



  keyword = token->keyword;
  switch (keyword)
    {
    case 133:

      type_spec = cp_parser_enum_specifier (parser);

      if (type_spec)
 {
   if (declares_class_or_enum)
     *declares_class_or_enum = 2;
   if (decl_specs)
     cp_parser_set_decl_spec_type (decl_specs,
       type_spec,
                          1);
   return type_spec;
 }
      else
 goto elaborated_type_specifier;



    case 136:
    case 131:
    case 129:


      cp_parser_parse_tentatively (parser);

      type_spec = cp_parser_class_specifier (parser);

      if (cp_parser_parse_definitely (parser))
 {
   if (declares_class_or_enum)
     *declares_class_or_enum = 2;
   if (decl_specs)
     cp_parser_set_decl_spec_type (decl_specs,
       type_spec,
                          1);
   return type_spec;
 }


    elaborated_type_specifier:

      if (declares_class_or_enum)
 *declares_class_or_enum = 1;


    case 130:

      type_spec
 = (cp_parser_elaborated_type_specifier
    (parser,
     decl_specs && decl_specs->specs[(int) ds_friend],
     is_declaration));
      if (decl_specs)
 cp_parser_set_decl_spec_type (decl_specs,
          type_spec,
                             1);
      return type_spec;

    case 134:
      ds = ds_const;
      if (is_cv_qualifier)
 *is_cv_qualifier = 1;
      break;

    case 128:
      ds = ds_volatile;
      if (is_cv_qualifier)
 *is_cv_qualifier = 1;
      break;

    case 132:
      ds = ds_restrict;
      if (is_cv_qualifier)
 *is_cv_qualifier = 1;
      break;

    case 135:

      ds = ds_complex;
      break;

    default:
      break;
    }


  if (ds != ds_last)
    {
      if (decl_specs)
 {
   ++decl_specs->specs[(int)ds];
   decl_specs->any_specifiers_p = 1;
 }
      return cp_lexer_consume_token (parser->lexer)->u.value;
    }



  type_spec = cp_parser_simple_type_specifier (parser,
            decl_specs,
            flags);



  if (!type_spec && !(flags & CP_PARSER_FLAGS_OPTIONAL))
    {
      cp_parser_error (parser, "expected type specifier");
      return error_mark_node;
    }

  return type_spec;
}
