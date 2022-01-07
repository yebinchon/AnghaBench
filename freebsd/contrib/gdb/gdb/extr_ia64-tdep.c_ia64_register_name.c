
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** ia64_register_names ;

__attribute__((used)) static const char *
ia64_register_name (int reg)
{
  return ia64_register_names[reg];
}
