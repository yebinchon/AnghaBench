
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BEING_DEFINED (int ) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static int
can_complete_type_without_circularity (tree type)
{
  if (type == NULL_TREE || type == error_mark_node)
    return 0;
  else if (COMPLETE_TYPE_P (type))
    return 1;
  else if (TREE_CODE (type) == ARRAY_TYPE && TYPE_DOMAIN (type))
    return can_complete_type_without_circularity (TREE_TYPE (type));
  else if (CLASS_TYPE_P (type)
    && TYPE_BEING_DEFINED (TYPE_MAIN_VARIANT (type)))
    return 0;
  else
    return 1;
}
