
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_DEFAULT_GVALUE ;
 scalar_t__ INL_MAX_THR ;
 scalar_t__ INL_MIN_LAT ;
 int MASK_CONST_GP ;
 scalar_t__ TARGET_AUTO_PIC ;
 scalar_t__ TARGET_INLINE_SQRT ;
 scalar_t__ flag_schedule_insns_after_reload ;
 scalar_t__ g_switch_set ;
 int g_switch_value ;
 scalar_t__ ia64_flag_schedule_insns2 ;
 int ia64_init_machine_status ;
 int ia64_section_threshold ;
 int init_machine_status ;
 int target_flags ;
 int warning (int ,char*) ;

void
ia64_override_options (void)
{
  if (TARGET_AUTO_PIC)
    target_flags |= MASK_CONST_GP;

  if (TARGET_INLINE_SQRT == INL_MIN_LAT)
    {
      warning (0, "not yet implemented: latency-optimized inline square root");
      TARGET_INLINE_SQRT = INL_MAX_THR;
    }

  ia64_flag_schedule_insns2 = flag_schedule_insns_after_reload;
  flag_schedule_insns_after_reload = 0;

  ia64_section_threshold = g_switch_set ? g_switch_value : IA64_DEFAULT_GVALUE;

  init_machine_status = ia64_init_machine_status;
}
