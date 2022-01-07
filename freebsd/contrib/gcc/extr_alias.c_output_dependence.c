
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int write_dependence_p (int ,int ,int) ;

int
output_dependence (rtx mem, rtx x)
{
  return write_dependence_p (mem, x, 1);
}
