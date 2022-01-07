
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLL_EXPORT_PREFIX ;
 int DLL_IMPORT_PREFIX ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

const char *
i386_pe_strip_name_encoding (const char *str)
{
  if (strncmp (str, DLL_IMPORT_PREFIX, strlen (DLL_IMPORT_PREFIX))
      == 0)
    str += strlen (DLL_IMPORT_PREFIX);
  else if (strncmp (str, DLL_EXPORT_PREFIX, strlen (DLL_EXPORT_PREFIX))
    == 0)
    str += strlen (DLL_EXPORT_PREFIX);
  if (*str == '*')
    str += 1;
  return str;
}
