
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_CLASS_TEMPLATE_P (scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_IDENTIFIER (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ constructor_name (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;
 scalar_t__ get_type_value (scalar_t__) ;
 int same_type_p (int ,int ) ;

bool
check_dtor_name (tree basetype, tree name)
{

  if (name == error_mark_node)
    return 1;

  if (TREE_CODE (name) == TYPE_DECL)
    name = TREE_TYPE (name);
  else if (TYPE_P (name))
            ;
  else if (TREE_CODE (name) == IDENTIFIER_NODE)
    {
      if ((IS_AGGR_TYPE (basetype) && name == constructor_name (basetype))
   || (TREE_CODE (basetype) == ENUMERAL_TYPE
       && name == TYPE_IDENTIFIER (basetype)))
 return 1;
      else
 name = get_type_value (name);
    }
  else
    {







      gcc_assert (DECL_CLASS_TEMPLATE_P (name));
      return 0;
    }

  if (!name)
    return 0;
  return same_type_p (TYPE_MAIN_VARIANT (basetype), TYPE_MAIN_VARIANT (name));
}
