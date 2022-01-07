
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal_ice (char*,char const*,char const*,int) ;

void
fancy_abort (const char *file, int line, const char *func)
{
  fatal_ice ("internal gcc abort in %s, at %s:%d", func, file, line);
}
