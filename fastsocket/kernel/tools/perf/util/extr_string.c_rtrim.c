
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 size_t strlen (char*) ;

char *rtrim(char *s)
{
 size_t size = strlen(s);
 char *end;

 if (!size)
  return s;

 end = s + size - 1;
 while (end >= s && isspace(*end))
  end--;
 *(end + 1) = '\0';

 return s;
}
