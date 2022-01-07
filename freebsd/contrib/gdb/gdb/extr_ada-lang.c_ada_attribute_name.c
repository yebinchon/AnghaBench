
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ATR_END ;
 char const** attribute_names ;

const char *
ada_attribute_name (int n)
{
  if (n > 0 && n < (int) ATR_END)
    return attribute_names[n];
  else
    return attribute_names[0];
}
