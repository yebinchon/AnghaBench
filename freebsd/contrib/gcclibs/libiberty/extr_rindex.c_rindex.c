
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,int) ;

char *
rindex (const char *s, int c)
{
  return strrchr (s, c);
}
