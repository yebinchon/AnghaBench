
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_parser ;


 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int cp_parser_error (int *,char*) ;
 scalar_t__ cp_parser_identifier (int *) ;
 scalar_t__ cp_parser_lookup_name (int *,scalar_t__,int ,int,int,int,int *) ;
 int cp_parser_uncommitted_to_tentative_parse_p (int *) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int none_type ;

__attribute__((used)) static tree
cp_parser_namespace_name (cp_parser* parser)
{
  tree identifier;
  tree namespace_decl;


  identifier = cp_parser_identifier (parser);
  if (identifier == error_mark_node)
    return error_mark_node;
  namespace_decl = cp_parser_lookup_name (parser, identifier,
       none_type,
                       0,
                        1,
                            1,
                           ((void*)0));

  if (namespace_decl == error_mark_node
      || TREE_CODE (namespace_decl) != NAMESPACE_DECL)
    {
      if (!cp_parser_uncommitted_to_tentative_parse_p (parser))
 error ("%qD is not a namespace-name", identifier);
      cp_parser_error (parser, "expected namespace-name");
      namespace_decl = error_mark_node;
    }

  return namespace_decl;
}
