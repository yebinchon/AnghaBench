
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* gpio_vals ;
 int* juli_rates ;

__attribute__((used)) static int get_gpio_val(int rate)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(juli_rates); i++)
  if (juli_rates[i] == rate)
   return gpio_vals[i];
 return 0;
}
