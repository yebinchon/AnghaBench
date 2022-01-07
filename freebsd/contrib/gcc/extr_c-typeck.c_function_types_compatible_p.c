
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_ACTUAL_ARG_TYPES (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 int TYPE_QUAL_VOLATILE ;
 scalar_t__ TYPE_VOLATILE (scalar_t__) ;
 scalar_t__ build_qualified_type (int ,int) ;
 int comptypes_internal (scalar_t__,scalar_t__) ;
 int pedwarn (char*) ;
 int self_promoting_args_p (scalar_t__) ;
 int type_lists_compatible_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
function_types_compatible_p (tree f1, tree f2)
{
  tree args1, args2;

  int val = 1;
  int val1;
  tree ret1, ret2;

  ret1 = TREE_TYPE (f1);
  ret2 = TREE_TYPE (f2);



  if (TYPE_VOLATILE (ret1) != TYPE_VOLATILE (ret2))
    pedwarn ("function return types not compatible due to %<volatile%>");
  if (TYPE_VOLATILE (ret1))
    ret1 = build_qualified_type (TYPE_MAIN_VARIANT (ret1),
     TYPE_QUALS (ret1) & ~TYPE_QUAL_VOLATILE);
  if (TYPE_VOLATILE (ret2))
    ret2 = build_qualified_type (TYPE_MAIN_VARIANT (ret2),
     TYPE_QUALS (ret2) & ~TYPE_QUAL_VOLATILE);
  val = comptypes_internal (ret1, ret2);
  if (val == 0)
    return 0;

  args1 = TYPE_ARG_TYPES (f1);
  args2 = TYPE_ARG_TYPES (f2);




  if (args1 == 0)
    {
      if (!self_promoting_args_p (args2))
 return 0;



      if (TYPE_ACTUAL_ARG_TYPES (f1)
   && 1 != type_lists_compatible_p (args2, TYPE_ACTUAL_ARG_TYPES (f1)))
 val = 2;
      return val;
    }
  if (args2 == 0)
    {
      if (!self_promoting_args_p (args1))
 return 0;
      if (TYPE_ACTUAL_ARG_TYPES (f2)
   && 1 != type_lists_compatible_p (args1, TYPE_ACTUAL_ARG_TYPES (f2)))
 val = 2;
      return val;
    }


  val1 = type_lists_compatible_p (args1, args2);
  return val1 != 1 ? val1 : val;
}
