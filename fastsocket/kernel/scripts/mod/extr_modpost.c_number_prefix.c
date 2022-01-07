
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int number_prefix(const char *sym)
{
 if (*sym++ == '\0')
  return 1;
 if (*sym != '.')
  return 0;
 do {
  char c = *sym++;
  if (c < '0' || c > '9')
   return 0;
 } while (*sym);
 return 1;
}
