
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* skip_spaces (char*) ;
 size_t strlen (char*) ;

char *strim(char *s)
{
 size_t size;
 char *end;

 size = strlen(s);

 if (!size)
  return s;

 end = s + size - 1;
 while (end >= s && isspace(*end))
  end--;
 *(end + 1) = '\0';

 return skip_spaces(s);
}
