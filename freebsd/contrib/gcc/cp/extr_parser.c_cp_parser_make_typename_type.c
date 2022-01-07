
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_parser ;


 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int cp_parser_diagnose_invalid_type_name (int *,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ make_typename_type (scalar_t__,scalar_t__,int ,int ) ;
 int tf_error ;
 int tf_none ;
 int typename_type ;

__attribute__((used)) static tree
cp_parser_make_typename_type (cp_parser *parser, tree scope, tree id)
{
  tree result;
  if (TREE_CODE (id) == IDENTIFIER_NODE)
    {
      result = make_typename_type (scope, id, typename_type,
                    tf_none);
      if (result == error_mark_node)
 cp_parser_diagnose_invalid_type_name (parser, scope, id);
      return result;
    }
  return make_typename_type (scope, id, typename_type, tf_error);
}
