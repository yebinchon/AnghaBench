
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static int
is_debug_section(const char *name)
{
 const char *dbg_sec[] = {
  ".apple_",
  ".debug",
  ".gnu.linkonce.wi.",
  ".line",
  ".stab",
  ((void*)0)
 };
 const char **p;

 for(p = dbg_sec; *p; p++) {
  if (strncmp(name, *p, strlen(*p)) == 0)
   return (1);
 }

 return (0);
}
