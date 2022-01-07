
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cp_find_first_component_aux (char const*,int ) ;

unsigned int
cp_find_first_component (const char *name)
{
  return cp_find_first_component_aux (name, 0);
}
