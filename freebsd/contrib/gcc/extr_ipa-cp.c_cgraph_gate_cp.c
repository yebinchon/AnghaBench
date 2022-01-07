
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_ipa_cp ;

__attribute__((used)) static bool
cgraph_gate_cp (void)
{
  return flag_ipa_cp;
}
