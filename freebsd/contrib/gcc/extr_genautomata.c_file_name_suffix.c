
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
file_name_suffix (const char *file_name)
{
  const char *last_period;

  for (last_period = ((void*)0); *file_name != '\0'; file_name++)
    if (*file_name == '.')
      last_period = file_name;
  return (last_period == ((void*)0) ? file_name : last_period);
}
