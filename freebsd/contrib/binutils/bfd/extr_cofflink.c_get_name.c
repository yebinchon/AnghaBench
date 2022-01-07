
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
get_name (char *ptr, char **dst)
{
  while (*ptr == ' ')
    ptr++;
  *dst = ptr;
  while (*ptr && *ptr != ' ')
    ptr++;
  *ptr = 0;
  return ptr+1;
}
