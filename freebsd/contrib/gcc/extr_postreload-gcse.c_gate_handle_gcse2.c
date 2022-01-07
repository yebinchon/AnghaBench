
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_gcse_after_reload ;
 scalar_t__ optimize ;

__attribute__((used)) static bool
gate_handle_gcse2 (void)
{
  return (optimize > 0 && flag_gcse_after_reload);
}
