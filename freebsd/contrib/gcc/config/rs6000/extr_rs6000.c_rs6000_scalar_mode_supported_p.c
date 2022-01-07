
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ DECIMAL_FLOAT_MODE_P (int) ;
 int default_scalar_mode_supported_p (int) ;

__attribute__((used)) static bool
rs6000_scalar_mode_supported_p (enum machine_mode mode)
{
  if (DECIMAL_FLOAT_MODE_P (mode))
    return 1;
  else
    return default_scalar_mode_supported_p (mode);
}
