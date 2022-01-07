
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
varequal(const char *p, const char *q)
{
 while (*p == *q++) {
  if (*p++ == '=')
   return 1;
 }
 if (*p == '=' && *(q - 1) == '\0')
  return 1;
 return 0;
}
