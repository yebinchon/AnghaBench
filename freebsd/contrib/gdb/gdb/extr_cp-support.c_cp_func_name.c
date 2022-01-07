
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cp_find_first_component (char const*) ;
 char* remove_params (char const*) ;

char *
cp_func_name (const char *full_name)
{
  const char *previous_component = full_name;
  const char *next_component;

  if (!full_name)
    return ((void*)0);

  for (next_component = (previous_component
    + cp_find_first_component (previous_component));
       *next_component == ':';
       next_component = (previous_component
    + cp_find_first_component (previous_component)))
    {

      previous_component = next_component + 2;
    }

  return remove_params (previous_component);
}
