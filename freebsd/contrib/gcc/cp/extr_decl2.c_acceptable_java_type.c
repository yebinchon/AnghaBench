
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ CLASSTYPE_TI_ARGS (scalar_t__) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_FOR_JAVA (scalar_t__) ;
 scalar_t__ VOID_TYPE ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static bool
acceptable_java_type (tree type)
{
  if (type == error_mark_node)
    return 0;

  if (TREE_CODE (type) == VOID_TYPE || TYPE_FOR_JAVA (type))
    return 1;
  if (TREE_CODE (type) == POINTER_TYPE || TREE_CODE (type) == REFERENCE_TYPE)
    {
      type = TREE_TYPE (type);
      if (TREE_CODE (type) == RECORD_TYPE)
 {
   tree args; int i;
   if (! TYPE_FOR_JAVA (type))
     return 0;
   if (! CLASSTYPE_TEMPLATE_INFO (type))
     return 1;
   args = CLASSTYPE_TI_ARGS (type);
   i = TREE_VEC_LENGTH (args);
   while (--i >= 0)
     {
       type = TREE_VEC_ELT (args, i);
       if (TREE_CODE (type) == POINTER_TYPE)
  type = TREE_TYPE (type);
       if (! TYPE_FOR_JAVA (type))
  return 0;
     }
   return 1;
 }
    }
  return 0;
}
