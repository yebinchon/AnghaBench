
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_AR ;

__attribute__((used)) static int
ar_is_only_in_memory_unit (int reg)
{
  reg -= REG_AR;
  return reg >= 0 && reg <= 47;
}
