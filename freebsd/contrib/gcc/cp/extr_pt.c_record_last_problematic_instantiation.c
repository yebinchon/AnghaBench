
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_template_error_tick ;
 int tinst_level_tick ;

void
record_last_problematic_instantiation (void)
{
  last_template_error_tick = tinst_level_tick;
}
