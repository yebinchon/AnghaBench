
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__* specs; scalar_t__ type; scalar_t__ storage_class; scalar_t__ redefined_builtin_type; scalar_t__ multiple_types_p; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;


 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ IS_AGGR_TYPE_CODE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int SET_ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 scalar_t__ TYPE_ANONYMOUS_P (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ current_class_type ;
 scalar_t__ current_scope () ;
 scalar_t__ ds_const ;
 scalar_t__ ds_explicit ;
 scalar_t__ ds_friend ;
 scalar_t__ ds_inline ;
 scalar_t__ ds_restrict ;
 scalar_t__ ds_thread ;
 scalar_t__ ds_typedef ;
 scalar_t__ ds_virtual ;
 scalar_t__ ds_volatile ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 int in_system_header ;
 scalar_t__ pedantic ;
 int pedwarn (char*,...) ;

tree
check_tag_decl (cp_decl_specifier_seq *declspecs)
{
  int saw_friend = declspecs->specs[(int)ds_friend] != 0;
  int saw_typedef = declspecs->specs[(int)ds_typedef] != 0;




  tree declared_type = NULL_TREE;
  bool error_p = 0;

  if (declspecs->multiple_types_p)
    error ("multiple types in one declaration");
  else if (declspecs->redefined_builtin_type)
    {
      if (!in_system_header)
 pedwarn ("redeclaration of C++ built-in type %qT",
   declspecs->redefined_builtin_type);
      return NULL_TREE;
    }

  if (declspecs->type
      && TYPE_P (declspecs->type)
      && ((TREE_CODE (declspecs->type) != TYPENAME_TYPE
    && IS_AGGR_TYPE (declspecs->type))
   || TREE_CODE (declspecs->type) == ENUMERAL_TYPE))
    declared_type = declspecs->type;
  else if (declspecs->type == error_mark_node)
    error_p = 1;
  if (declared_type == NULL_TREE && ! saw_friend && !error_p)
    pedwarn ("declaration does not declare anything");

  else if (declared_type && IS_AGGR_TYPE_CODE (TREE_CODE (declared_type))
    && TYPE_ANONYMOUS_P (declared_type))
    {
      if (saw_typedef)
 {
   error ("missing type-name in typedef-declaration");
   return NULL_TREE;
 }
                                                                       ;
      SET_ANON_AGGR_TYPE_P (declared_type);

      if (TREE_CODE (declared_type) != UNION_TYPE && pedantic
   && !in_system_header)
 pedwarn ("ISO C++ prohibits anonymous structs");
    }

  else
    {
      if (declspecs->specs[(int)ds_inline]
   || declspecs->specs[(int)ds_virtual])
 error ("%qs can only be specified for functions",
        declspecs->specs[(int)ds_inline]
        ? "inline" : "virtual");
      else if (saw_friend
        && (!current_class_type
     || current_scope () != current_class_type))
 error ("%<friend%> can only be specified inside a class");
      else if (declspecs->specs[(int)ds_explicit])
 error ("%<explicit%> can only be specified for constructors");
      else if (declspecs->storage_class)
 error ("a storage class can only be specified for objects "
        "and functions");
      else if (declspecs->specs[(int)ds_const]
        || declspecs->specs[(int)ds_volatile]
        || declspecs->specs[(int)ds_restrict]
        || declspecs->specs[(int)ds_thread])
 error ("qualifiers can only be specified for objects "
        "and functions");
    }

  return declared_type;
}
