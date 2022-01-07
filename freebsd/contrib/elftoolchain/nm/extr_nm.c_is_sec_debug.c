
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;

__attribute__((used)) static bool
is_sec_debug(const char *shname)
{
 const char *dbg_sec[] = {
  ".debug",
  ".gnu.linkonce.wi.",
  ".line",
  ".rel.debug",
  ".rela.debug",
  ".stab",
  ((void*)0)
 };
 const char **p;

 if (shname == ((void*)0))
  return (0);

 for (p = dbg_sec; *p; p++) {
  if (!strncmp(shname, *p, strlen(*p)))
   return (1);
 }

 return (0);
}
