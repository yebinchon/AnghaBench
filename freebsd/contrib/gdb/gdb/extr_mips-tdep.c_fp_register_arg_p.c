
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 scalar_t__ MIPS_EABI ;
 scalar_t__ MIPS_FPU_NONE ;
 scalar_t__ MIPS_FPU_TYPE ;
 int TYPE_CODE (int ) ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_FIELD_TYPE (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;

__attribute__((used)) static int
fp_register_arg_p (enum type_code typecode, struct type *arg_type)
{
  return ((typecode == TYPE_CODE_FLT
    || (MIPS_EABI
        && (typecode == TYPE_CODE_STRUCT
     || typecode == TYPE_CODE_UNION)
        && TYPE_NFIELDS (arg_type) == 1
        && TYPE_CODE (TYPE_FIELD_TYPE (arg_type, 0)) == TYPE_CODE_FLT))
   && MIPS_FPU_TYPE != MIPS_FPU_NONE);
}
