
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 int DImode ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ aggregate_value_p (scalar_t__,scalar_t__) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 scalar_t__ ix86_function_regparm (scalar_t__,scalar_t__) ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int plus_constant (int ,int) ;
 int stack_pointer_rtx ;
 scalar_t__ void_type_node ;
 int* x86_64_int_parameter_registers ;

__attribute__((used)) static rtx
x86_this_parameter (tree function)
{
  tree type = TREE_TYPE (function);

  if (TARGET_64BIT)
    {
      int n = aggregate_value_p (TREE_TYPE (type), type) != 0;
      return gen_rtx_REG (DImode, x86_64_int_parameter_registers[n]);
    }

  if (ix86_function_regparm (type, function) > 0)
    {
      tree parm;

      parm = TYPE_ARG_TYPES (type);


      for (; parm; parm = TREE_CHAIN (parm))
 if (TREE_VALUE (parm) == void_type_node)
   break;

      if (parm)
 {
   int regno = 0;
   if (lookup_attribute ("fastcall", TYPE_ATTRIBUTES (type)))
     regno = 2;
   return gen_rtx_REG (SImode, regno);
 }
    }

  if (aggregate_value_p (TREE_TYPE (type), type))
    return gen_rtx_MEM (SImode, plus_constant (stack_pointer_rtx, 8));
  else
    return gen_rtx_MEM (SImode, plus_constant (stack_pointer_rtx, 4));
}
