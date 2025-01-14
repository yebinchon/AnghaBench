
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char const*,int) ;
 scalar_t__ xmalloc (int) ;

char *
strnsave(const char *str, int len)
{
  char *sp = (char *) xmalloc(len + 1);
  memmove(sp, str, len);
  sp[len] = '\0';

  return sp;
}
