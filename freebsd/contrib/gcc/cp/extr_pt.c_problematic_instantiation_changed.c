
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ last_template_error_tick ;
 scalar_t__ tinst_level_tick ;

int
problematic_instantiation_changed (void)
{
  return last_template_error_tick != tinst_level_tick;
}
