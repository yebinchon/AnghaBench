
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* build_message_string (char*,char const*) ;

char *
file_name_as_prefix (const char *f)
{
  return build_message_string ("%s: ", f);
}
