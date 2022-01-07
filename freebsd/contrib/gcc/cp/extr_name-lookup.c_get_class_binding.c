
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ this_entity; } ;
typedef TYPE_1__ cxx_scope ;
typedef int cxx_binding ;
typedef int LOCAL_BINDING_P ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 scalar_t__ DECL_CLASS_TEMPLATE_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_member (scalar_t__,scalar_t__,int,int) ;
 int * new_class_binding (scalar_t__,scalar_t__,scalar_t__,TYPE_1__*) ;
 int set_inherited_value_binding_p (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static cxx_binding *
get_class_binding (tree name, cxx_scope *scope)
{
  tree class_type;
  tree type_binding;
  tree value_binding;
  cxx_binding *binding;

  class_type = scope->this_entity;


  type_binding = lookup_member (class_type, name,
                2, 1);

  value_binding = lookup_member (class_type, name,
                 2, 0);

  if (value_binding
      && (TREE_CODE (value_binding) == TYPE_DECL
   || DECL_CLASS_TEMPLATE_P (value_binding)
   || (TREE_CODE (value_binding) == TREE_LIST
       && TREE_TYPE (value_binding) == error_mark_node
       && (TREE_CODE (TREE_VALUE (value_binding))
    == TYPE_DECL))))



    ;
  else if (value_binding)
    {
      if (TREE_CODE (value_binding) == TREE_LIST
   && TREE_TYPE (value_binding) == error_mark_node)

 ;
      else if (BASELINK_P (value_binding))

 value_binding = BASELINK_FUNCTIONS (value_binding);
    }



  if (type_binding || value_binding)
    {
      binding = new_class_binding (name,
       value_binding,
       type_binding,
       scope);

      LOCAL_BINDING_P (binding) = 0;
      set_inherited_value_binding_p (binding, value_binding, class_type);
    }
  else
    binding = ((void*)0);

  return binding;
}
