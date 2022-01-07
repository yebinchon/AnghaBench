
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extra_warnings ;
 scalar_t__ maybe_warn_unused_parameter ;
 int warn_uninitialized ;
 int warn_unused_parameter ;
 int warn_unused_value ;

__attribute__((used)) static void
set_Wextra (int setting)
{
  extra_warnings = setting;
  warn_unused_value = setting;
  warn_unused_parameter = (setting && maybe_warn_unused_parameter);




  if (setting == 0)
    warn_uninitialized = 0;
  else if (warn_uninitialized != 1)
    warn_uninitialized = 2;
}
