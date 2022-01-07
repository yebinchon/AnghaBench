
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errorcount ;
 scalar_t__ flag_ipa_type_escape ;
 scalar_t__ flag_unit_at_a_time ;
 scalar_t__ sorrycount ;

__attribute__((used)) static bool
gate_type_escape_vars (void)
{
  return (flag_unit_at_a_time != 0 && flag_ipa_type_escape

   && !(errorcount || sorrycount));
}
