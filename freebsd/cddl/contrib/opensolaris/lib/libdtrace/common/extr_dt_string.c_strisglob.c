
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strisglob(const char *s)
{
 char c;

 while ((c = *s++) != '\0') {
  if (c == '[' || c == '?' || c == '*' || c == '\\')
   return (1);
 }

 return (0);
}
