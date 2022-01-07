
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_info_for_ssa_name_age ;

__attribute__((used)) static void
clear_ssa_name_info (void)
{
  current_info_for_ssa_name_age++;
}
