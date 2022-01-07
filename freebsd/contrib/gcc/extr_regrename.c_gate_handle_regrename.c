
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_cprop_registers ;
 scalar_t__ flag_rename_registers ;
 scalar_t__ optimize ;

__attribute__((used)) static bool
gate_handle_regrename (void)
{
  return (optimize > 0 && (flag_rename_registers || flag_cprop_registers));
}
