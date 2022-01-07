
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLL_EXPORT_PREFIX ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

int
i386_pe_dllexport_name_p (const char *symbol)
{
  return (strncmp (DLL_EXPORT_PREFIX, symbol,
     strlen (DLL_EXPORT_PREFIX)) == 0);
}
