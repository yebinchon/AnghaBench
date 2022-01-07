
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_20__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_23__ {int keyword; } ;
typedef TYPE_2__ cp_token ;
typedef int cp_parser_flags ;
struct TYPE_24__ {scalar_t__ scope; int lexer; } ;
typedef TYPE_3__ cp_parser ;
struct TYPE_25__ {int explicit_char_p; int explicit_int_p; int any_specifiers_p; scalar_t__ type; int * specs; } ;
typedef TYPE_4__ cp_decl_specifier_seq ;
struct TYPE_21__ {scalar_t__ value; } ;
struct TYPE_22__ {TYPE_1__ u; } ;


 int CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 int TYPE_P (scalar_t__) ;
 scalar_t__ boolean_type_node ;
 scalar_t__ c_dialect_objc () ;
 scalar_t__ char_type_node ;
 TYPE_20__* cp_lexer_consume_token (int ) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 int cp_parser_check_for_invalid_template_id (TYPE_3__*,scalar_t__) ;
 int cp_parser_error (TYPE_3__*,char*) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_3__*,int) ;
 scalar_t__ cp_parser_nested_name_specifier_opt (TYPE_3__*,int,int,int,int) ;
 scalar_t__ cp_parser_objc_protocol_refs_opt (TYPE_3__*) ;
 scalar_t__ cp_parser_optional_template_keyword (TYPE_3__*) ;
 int cp_parser_parse_definitely (TYPE_3__*) ;
 int cp_parser_parse_tentatively (TYPE_3__*) ;
 int cp_parser_set_decl_spec_type (TYPE_4__*,scalar_t__,int) ;
 scalar_t__ cp_parser_sizeof_operand (TYPE_3__*,int const) ;
 scalar_t__ cp_parser_template_id (TYPE_3__*,int,int,int) ;
 scalar_t__ cp_parser_type_name (TYPE_3__*) ;
 scalar_t__ double_type_node ;
 scalar_t__ ds_long ;
 scalar_t__ ds_short ;
 scalar_t__ ds_signed ;
 scalar_t__ ds_unsigned ;
 scalar_t__ error_mark_node ;
 scalar_t__ finish_typeof (scalar_t__) ;
 scalar_t__ float_type_node ;
 scalar_t__ integer_type_node ;
 scalar_t__ long_integer_type_node ;
 int maybe_note_name_used_in_class (scalar_t__,scalar_t__) ;
 scalar_t__ objc_get_protocol_qualified_type (scalar_t__,scalar_t__) ;
 scalar_t__ objc_is_class_name (scalar_t__) ;
 scalar_t__ objc_is_id (scalar_t__) ;
 scalar_t__ short_integer_type_node ;
 scalar_t__ unsigned_type_node ;
 scalar_t__ void_type_node ;
 scalar_t__ wchar_type_node ;

__attribute__((used)) static tree
cp_parser_simple_type_specifier (cp_parser* parser,
     cp_decl_specifier_seq *decl_specs,
     cp_parser_flags flags)
{
  tree type = NULL_TREE;
  cp_token *token;


  token = cp_lexer_peek_token (parser->lexer);


  switch (token->keyword)
    {
    case 138:
      if (decl_specs)
 decl_specs->explicit_char_p = 1;
      type = char_type_node;
      break;
    case 128:
      type = wchar_type_node;
      break;
    case 139:
      type = boolean_type_node;
      break;
    case 133:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_short];
      type = short_integer_type_node;
      break;
    case 135:
      if (decl_specs)
 decl_specs->explicit_int_p = 1;
      type = integer_type_node;
      break;
    case 134:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_long];
      type = long_integer_type_node;
      break;
    case 132:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_signed];
      type = integer_type_node;
      break;
    case 130:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_unsigned];
      type = unsigned_type_node;
      break;
    case 136:
      type = float_type_node;
      break;
    case 137:
      type = double_type_node;
      break;
    case 129:
      type = void_type_node;
      break;

    case 131:

      cp_lexer_consume_token (parser->lexer);

      type = cp_parser_sizeof_operand (parser, 131);

      if (!TYPE_P (type))
 type = finish_typeof (type);

      if (decl_specs)
 cp_parser_set_decl_spec_type (decl_specs, type,
                             1);

      return type;

    default:
      break;
    }


  if (type)
    {
      tree id;


      if (decl_specs
   && (token->keyword != 132
       && token->keyword != 130
       && token->keyword != 133
       && token->keyword != 134))
 cp_parser_set_decl_spec_type (decl_specs,
          type,
                           0);
      if (decl_specs)
 decl_specs->any_specifiers_p = 1;


      id = cp_lexer_consume_token (parser->lexer)->u.value;




      cp_parser_check_for_invalid_template_id (parser, type);

      return TYPE_NAME (type);
    }


  if (!(flags & CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES))
    {
      bool qualified_p;
      bool global_p;



      if (flags & CP_PARSER_FLAGS_OPTIONAL)
 cp_parser_parse_tentatively (parser);


      global_p
 = (cp_parser_global_scope_opt (parser,
                                     0)
    != NULL_TREE);

      qualified_p
 = (cp_parser_nested_name_specifier_opt (parser,
                             0,
                             1,
                 0,
                         0)
    != NULL_TREE);


      if (parser->scope
   && cp_parser_optional_template_keyword (parser))
 {

   type = cp_parser_template_id (parser,
                            1,
                            1,
                        0);


   if (TREE_CODE (type) != TYPE_DECL)
     {
       cp_parser_error (parser, "expected template-id for type");
       type = NULL_TREE;
     }
 }

      else
 type = cp_parser_type_name (parser);

      if (type
   && !global_p
   && !qualified_p
   && TREE_CODE (type) == TYPE_DECL
   && TREE_CODE (DECL_NAME (type)) == IDENTIFIER_NODE)
 maybe_note_name_used_in_class (DECL_NAME (type), type);

      if ((flags & CP_PARSER_FLAGS_OPTIONAL)
   && !cp_parser_parse_definitely (parser))
 type = NULL_TREE;
      if (type && decl_specs)
 cp_parser_set_decl_spec_type (decl_specs, type,
                           1);
    }


  if (!type && !(flags & CP_PARSER_FLAGS_OPTIONAL))
    {
      cp_parser_error (parser, "expected type-name");
      return error_mark_node;
    }




  if (type && type != error_mark_node)
    {



      if (c_dialect_objc ()
   && (objc_is_id (type) || objc_is_class_name (type)))
 {
   tree protos = cp_parser_objc_protocol_refs_opt (parser);
   tree qual_type = objc_get_protocol_qualified_type (type, protos);



   if (decl_specs)
     decl_specs->type = qual_type;

   return qual_type;
 }

      cp_parser_check_for_invalid_template_id (parser, TREE_TYPE (type));
    }

  return type;
}
