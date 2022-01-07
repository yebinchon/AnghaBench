
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MODE_INT ;
 scalar_t__ OFFSET_TYPE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ exact_log2 (int) ;
 int s390_function_arg_float (int,int ) ;
 int s390_function_arg_size (int,int ) ;

__attribute__((used)) static bool
s390_function_arg_integer (enum machine_mode mode, tree type)
{
  int size = s390_function_arg_size (mode, type);
  if (size > 8)
    return 0;


  if (!type)
    return GET_MODE_CLASS (mode) == MODE_INT
    || (TARGET_SOFT_FLOAT && SCALAR_FLOAT_MODE_P (mode));


  if (INTEGRAL_TYPE_P (type)
      || POINTER_TYPE_P (type)
      || TREE_CODE (type) == OFFSET_TYPE
      || (TARGET_SOFT_FLOAT && TREE_CODE (type) == REAL_TYPE))
    return 1;



  if (AGGREGATE_TYPE_P (type)
      && exact_log2 (size) >= 0
      && !s390_function_arg_float (mode, type))
    return 1;

  return 0;
}
