
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int for_each_rtx (int *,int ,int ) ;
 int mips_small_data_pattern_1 ;

bool
mips_small_data_pattern_p (rtx op)
{
  return for_each_rtx (&op, mips_small_data_pattern_1, 0);
}
