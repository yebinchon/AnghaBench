
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
specialcmp (char *a, char *b)
{
  while (*a && *a != ' ' && *a != ']' && *b && *b != ' ' && *b != ']')
    {
      if (*a != *b)
 return *a - *b;
      a++, b++;
    }
  if (*a && *a != ' ' && *a != ']')
    return 1;
  if (*b && *b != ' ' && *b != ']')
    return -1;
  return 0;
}
