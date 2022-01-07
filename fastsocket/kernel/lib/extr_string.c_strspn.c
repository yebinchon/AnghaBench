
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strspn(const char *s, const char *accept)
{
 const char *p;
 const char *a;
 size_t count = 0;

 for (p = s; *p != '\0'; ++p) {
  for (a = accept; *a != '\0'; ++a) {
   if (*p == *a)
    break;
  }
  if (*a == '\0')
   return count;
  ++count;
 }
 return count;
}
