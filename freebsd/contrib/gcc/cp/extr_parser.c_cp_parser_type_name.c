
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_11__ {int scope; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ cp_parser_class_name (TYPE_1__*,int,int,int ,int,int,int) ;
 scalar_t__ cp_parser_identifier (TYPE_1__*) ;
 scalar_t__ cp_parser_lookup_name_simple (TYPE_1__*,scalar_t__) ;
 int cp_parser_name_lookup_error (TYPE_1__*,scalar_t__,scalar_t__,char*) ;
 scalar_t__ cp_parser_objc_protocol_refs_opt (TYPE_1__*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_simulate_error (TYPE_1__*) ;
 scalar_t__ error_mark_node ;
 int maybe_note_name_used_in_class (scalar_t__,scalar_t__) ;
 int none_type ;
 scalar_t__ objc_get_protocol_qualified_type (scalar_t__,scalar_t__) ;
 scalar_t__ objc_is_class_name (scalar_t__) ;
 scalar_t__ objc_is_id (scalar_t__) ;

__attribute__((used)) static tree
cp_parser_type_name (cp_parser* parser)
{
  tree type_decl;
  tree identifier;


  cp_parser_parse_tentatively (parser);

  type_decl = cp_parser_class_name (parser,
                               0,
                               0,
        none_type,
                               1,
                         0,
                           0);

  if (!cp_parser_parse_definitely (parser))
    {

      identifier = cp_parser_identifier (parser);
      if (identifier == error_mark_node)
 return error_mark_node;


      type_decl = cp_parser_lookup_name_simple (parser, identifier);

      if (TREE_CODE (type_decl) != TYPE_DECL
   && (objc_is_id (identifier) || objc_is_class_name (identifier)))
 {

   tree protos = cp_parser_objc_protocol_refs_opt (parser);
   tree type = objc_get_protocol_qualified_type (identifier, protos);
   if (type)
     type_decl = TYPE_NAME (type);
 }


      if (TREE_CODE (type_decl) != TYPE_DECL)
 {
   if (!cp_parser_simulate_error (parser))
     cp_parser_name_lookup_error (parser, identifier, type_decl,
      "is not a type");
   type_decl = error_mark_node;
 }




      else if (type_decl != error_mark_node
        && !parser->scope)
 maybe_note_name_used_in_class (identifier, type_decl);
    }

  return type_decl;
}
