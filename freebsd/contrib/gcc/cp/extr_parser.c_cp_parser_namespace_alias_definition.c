
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_parser ;


 int CPP_EQ ;
 int CPP_SEMICOLON ;
 int RID_NAMESPACE ;
 scalar_t__ cp_parser_identifier (int *) ;
 scalar_t__ cp_parser_qualified_namespace_specifier (int *) ;
 int cp_parser_require (int *,int ,char*) ;
 int cp_parser_require_keyword (int *,int ,char*) ;
 int do_namespace_alias (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static void
cp_parser_namespace_alias_definition (cp_parser* parser)
{
  tree identifier;
  tree namespace_specifier;


  cp_parser_require_keyword (parser, RID_NAMESPACE, "`namespace'");

  identifier = cp_parser_identifier (parser);
  if (identifier == error_mark_node)
    return;

  cp_parser_require (parser, CPP_EQ, "`='");

  namespace_specifier
    = cp_parser_qualified_namespace_specifier (parser);

  cp_parser_require (parser, CPP_SEMICOLON, "`;'");


  do_namespace_alias (identifier, namespace_specifier);
}
