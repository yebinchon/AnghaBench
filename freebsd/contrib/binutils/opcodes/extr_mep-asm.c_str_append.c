
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;
 char* realloc (char*,int) ;
 int strlen (char*) ;
 char* strncat (char*,char const*,int) ;

__attribute__((used)) static char *
str_append (char *dest, const char *input, int len)
{
  char *new_dest;
  int oldlen;

  if (len == 0)
    return dest;

  oldlen = (dest ? strlen(dest) : 0);
  new_dest = realloc (dest, oldlen + len + 1);
  memset (new_dest + oldlen, 0, len + 1);
  return strncat (new_dest, input, len);
}
