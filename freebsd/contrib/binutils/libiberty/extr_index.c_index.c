
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,int) ;

char *
index (const char *s, int c)
{
  return strchr (s, c);
}
