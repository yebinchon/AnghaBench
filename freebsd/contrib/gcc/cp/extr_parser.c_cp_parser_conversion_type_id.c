
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int cp_parser ;
typedef int cp_declarator ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;


 int TYPENAME ;
 scalar_t__ cp_parser_attributes_opt (int *) ;
 int * cp_parser_conversion_declarator_opt (int *) ;
 int cp_parser_type_specifier_seq (int *,int,TYPE_1__*) ;
 int cplus_decl_attributes (scalar_t__*,scalar_t__,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ grokdeclarator (int *,TYPE_1__*,int ,int ,scalar_t__*) ;

__attribute__((used)) static tree
cp_parser_conversion_type_id (cp_parser* parser)
{
  tree attributes;
  cp_decl_specifier_seq type_specifiers;
  cp_declarator *declarator;
  tree type_specified;


  attributes = cp_parser_attributes_opt (parser);

  cp_parser_type_specifier_seq (parser, 0,
    &type_specifiers);

  if (type_specifiers.type == error_mark_node)
    return error_mark_node;

  declarator = cp_parser_conversion_declarator_opt (parser);

  type_specified = grokdeclarator (declarator, &type_specifiers, TYPENAME,
                        0, &attributes);
  if (attributes)
    cplus_decl_attributes (&type_specified, attributes, 0);
  return type_specified;
}
