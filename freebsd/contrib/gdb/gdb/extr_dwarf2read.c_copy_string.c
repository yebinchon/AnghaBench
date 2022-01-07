
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
copy_string (const char *buf, int len)
{
  char *s = xmalloc (len + 1);
  memcpy (s, buf, len);
  s[len] = '\0';

  return s;
}
