
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_hex_format_prefix () ;
 char* local_hex_format_specifier () ;
 char* local_hex_format_suffix () ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

char *
local_hex_format_custom (char *pre)
{
  static char form[50];

  strcpy (form, local_hex_format_prefix ());
  strcat (form, "%");
  strcat (form, pre);
  strcat (form, local_hex_format_specifier ());
  strcat (form, local_hex_format_suffix ());
  return form;
}
