
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
typedef enum tag_types { ____Placeholder_tag_types } tag_types ;


 scalar_t__ CLASSTYPE_IS_TEMPLATE (char*) ;
 int CLASSTYPE_TI_TEMPLATE (char*) ;
 int DECL_IMPLICIT_TYPEDEF_P (char*) ;
 char* DECL_NAME (int ) ;
 scalar_t__ DECL_SELF_REFERENCE_P (char*) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 char* TYPE_NAME (char*) ;
 scalar_t__ UNION_TYPE ;
 int enum_type ;
 int error (char*,char*,...) ;
 char* error_mark_node ;
 char* tag_name (int) ;
 int typename_type ;

tree
check_elaborated_type_specifier (enum tag_types tag_code,
     tree decl,
     bool allow_template_p)
{
  tree type;







  if (DECL_SELF_REFERENCE_P (decl))
    decl = TYPE_NAME (TREE_TYPE (decl));

  type = TREE_TYPE (decl);



  if (TREE_CODE (type) == TEMPLATE_TYPE_PARM)
    {
      error ("using template type parameter %qT after %qs",
      type, tag_name (tag_code));
      return error_mark_node;
    }
  else if (!DECL_IMPLICIT_TYPEDEF_P (decl)
    && tag_code != typename_type)
    {
      error ("using typedef-name %qD after %qs", decl, tag_name (tag_code));
      error ("%q+D has a previous declaration here", decl);
      return error_mark_node;
    }
  else if (TREE_CODE (type) != RECORD_TYPE
    && TREE_CODE (type) != UNION_TYPE
    && tag_code != enum_type
    && tag_code != typename_type)
    {
      error ("%qT referred to as %qs", type, tag_name (tag_code));
      error ("%q+T has a previous declaration here", type);
      return error_mark_node;
    }
  else if (TREE_CODE (type) != ENUMERAL_TYPE
    && tag_code == enum_type)
    {
      error ("%qT referred to as enum", type);
      error ("%q+T has a previous declaration here", type);
      return error_mark_node;
    }
  else if (!allow_template_p
    && TREE_CODE (type) == RECORD_TYPE
    && CLASSTYPE_IS_TEMPLATE (type))
    {







      error ("template argument required for %<%s %T%>",
      tag_name (tag_code),
      DECL_NAME (CLASSTYPE_TI_TEMPLATE (type)));
      return error_mark_node;
    }

  return type;
}
