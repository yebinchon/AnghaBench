
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TARGET_ALTIVEC ;
 int altivec_builtin_mask_for_load ;

__attribute__((used)) static tree
rs6000_builtin_mask_for_load (void)
{
  if (TARGET_ALTIVEC)
    return altivec_builtin_mask_for_load;
  else
    return 0;
}
