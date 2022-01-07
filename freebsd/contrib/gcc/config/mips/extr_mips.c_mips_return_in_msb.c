
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ TARGET_BIG_ENDIAN ;
 scalar_t__ TARGET_NEWABI ;
 scalar_t__ mips_fpr_return_fields (int ,int *) ;

__attribute__((used)) static bool
mips_return_in_msb (tree valtype)
{
  tree fields[2];

  return (TARGET_NEWABI
   && TARGET_BIG_ENDIAN
   && AGGREGATE_TYPE_P (valtype)
   && mips_fpr_return_fields (valtype, fields) == 0);
}
