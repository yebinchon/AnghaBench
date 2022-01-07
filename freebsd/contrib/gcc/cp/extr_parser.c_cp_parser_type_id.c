
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


 int CP_PARSER_DECLARATOR_ABSTRACT ;
 int * cp_parser_declarator (int *,int ,int *,int *,int) ;
 int cp_parser_parse_definitely (int *) ;
 int cp_parser_parse_tentatively (int *) ;
 int cp_parser_type_specifier_seq (int *,int,TYPE_1__*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ groktypename (TYPE_1__*,int *) ;

__attribute__((used)) static tree
cp_parser_type_id (cp_parser* parser)
{
  cp_decl_specifier_seq type_specifier_seq;
  cp_declarator *abstract_declarator;


  cp_parser_type_specifier_seq (parser, 0,
    &type_specifier_seq);
  if (type_specifier_seq.type == error_mark_node)
    return error_mark_node;


  cp_parser_parse_tentatively (parser);

  abstract_declarator
    = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_ABSTRACT, ((void*)0),
                           ((void*)0),
                    0);

  if (!cp_parser_parse_definitely (parser))
    abstract_declarator = ((void*)0);

  return groktypename (&type_specifier_seq, abstract_declarator);
}
