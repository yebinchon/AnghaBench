
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_BIG_END ;
 scalar_t__ TARGET_FPA ;
 scalar_t__ TARGET_MAVERICK ;
 scalar_t__ TARGET_VFP ;

int
arm_float_words_big_endian (void)
{
  if (TARGET_MAVERICK)
    return 0;




  if (TARGET_FPA)
    {
      return 1;
    }

  if (TARGET_VFP)
    return (TARGET_BIG_END ? 1 : 0);

  return 1;
}
