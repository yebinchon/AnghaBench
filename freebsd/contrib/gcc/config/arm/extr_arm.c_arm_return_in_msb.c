
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ TARGET_AAPCS_BASED ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static bool
arm_return_in_msb (tree valtype)
{
  return (TARGET_AAPCS_BASED
          && BYTES_BIG_ENDIAN
          && (AGGREGATE_TYPE_P (valtype)
              || TREE_CODE (valtype) == COMPLEX_TYPE));
}
