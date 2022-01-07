
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pause_on_oops_flag ;

int oops_may_print(void)
{
 return pause_on_oops_flag == 0;
}
