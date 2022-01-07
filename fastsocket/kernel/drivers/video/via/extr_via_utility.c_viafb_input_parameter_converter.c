
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int viafb_input_parameter_converter(int parameter_value)
{
 int result;

 if (parameter_value >= 1 && parameter_value <= 9)
  result = 1 << (parameter_value - 1);
 else
  result = 1;

 return result;
}
