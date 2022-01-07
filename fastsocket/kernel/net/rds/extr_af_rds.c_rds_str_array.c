
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *rds_str_array(char **array, size_t elements, size_t index)
{
 if ((index < elements) && array[index])
  return array[index];
 else
  return "unknown";
}
