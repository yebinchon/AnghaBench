
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ MEM_VOLATILE_P (int ) ;

int
read_dependence (rtx mem, rtx x)
{
  return MEM_VOLATILE_P (x) && MEM_VOLATILE_P (mem);
}
