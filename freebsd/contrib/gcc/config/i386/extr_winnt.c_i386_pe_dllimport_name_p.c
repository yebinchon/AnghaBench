
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLL_IMPORT_PREFIX ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

int
i386_pe_dllimport_name_p (const char *symbol)
{
  return (strncmp (DLL_IMPORT_PREFIX, symbol,
     strlen (DLL_IMPORT_PREFIX)) == 0);
}
