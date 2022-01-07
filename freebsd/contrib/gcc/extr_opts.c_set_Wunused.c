
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ extra_warnings ;
 int maybe_warn_unused_parameter ;
 int warn_unused_function ;
 int warn_unused_label ;
 int warn_unused_parameter ;
 int warn_unused_value ;
 int warn_unused_variable ;

void
set_Wunused (int setting)
{
  warn_unused_function = setting;
  warn_unused_label = setting;





  maybe_warn_unused_parameter = setting;
  warn_unused_parameter = (setting && extra_warnings);
  warn_unused_variable = setting;
  warn_unused_value = setting;
}
