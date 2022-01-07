
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** arm_register_names ;

__attribute__((used)) static const char *
arm_register_name (int i)
{
  return arm_register_names[i];
}
