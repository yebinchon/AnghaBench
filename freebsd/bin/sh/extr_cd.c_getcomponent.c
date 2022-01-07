
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
getcomponent(char **path)
{
 char *p;
 char *start;

 if ((p = *path) == ((void*)0))
  return ((void*)0);
 start = *path;
 while (*p != '/' && *p != '\0')
  p++;
 if (*p == '\0') {
  *path = ((void*)0);
 } else {
  *p++ = '\0';
  *path = p;
 }
 return start;
}
