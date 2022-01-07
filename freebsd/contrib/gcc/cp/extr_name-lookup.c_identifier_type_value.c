
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int LOOKUP_COMPLAIN ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 scalar_t__ REAL_IDENTIFIER_TYPE_VALUE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ global_type_node ;
 scalar_t__ lookup_name_real (scalar_t__,int,int,int,int ,int ) ;
 int timevar_push (int ) ;

tree
identifier_type_value (tree id)
{
  timevar_push (TV_NAME_LOOKUP);

  if (REAL_IDENTIFIER_TYPE_VALUE (id) == NULL_TREE)
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);

  if (REAL_IDENTIFIER_TYPE_VALUE (id) != global_type_node)
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, REAL_IDENTIFIER_TYPE_VALUE (id));


  id = lookup_name_real (id, 2, 1, 1, 0, LOOKUP_COMPLAIN);
  if (id)
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, TREE_TYPE (id));
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);
}
