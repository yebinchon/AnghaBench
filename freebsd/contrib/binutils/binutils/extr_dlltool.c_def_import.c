
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (scalar_t__) ;
 int append_import (char const*,char const*,int) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
def_import (const char *app_name, const char *module, const char *dllext,
     const char *entry, int ord_val)
{
  const char *application_name;
  char *buf;

  if (entry != ((void*)0))
    application_name = entry;
  else
    {
      if (app_name != ((void*)0))
 application_name = app_name;
      else
 application_name = "";
    }

  if (dllext != ((void*)0))
    {
      buf = (char *) alloca (strlen (module) + strlen (dllext) + 2);
      sprintf (buf, "%s.%s", module, dllext);
      module = buf;
    }

  append_import (application_name, module, ord_val);
}
