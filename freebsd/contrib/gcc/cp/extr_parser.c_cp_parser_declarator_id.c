
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_parser ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 scalar_t__ cp_parser_id_expression (int *,int,int,int *,int,int) ;

__attribute__((used)) static tree
cp_parser_declarator_id (cp_parser* parser, bool optional_p)
{
  tree id;
  id = cp_parser_id_expression (parser,
                           0,
                           0,
                   ((void*)0),
                     1,
    optional_p);
  if (id && BASELINK_P (id))
    id = BASELINK_FUNCTIONS (id);
  return id;
}
