
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static char *
savestring (const char *start, int len)
{
  char *ret;

  ret = (char *) xmalloc (len + 1);
  memcpy (ret, start, len);
  ret[len] = '\0';
  return ret;
}
