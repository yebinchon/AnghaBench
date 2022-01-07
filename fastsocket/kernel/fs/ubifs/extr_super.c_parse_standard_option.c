
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_SYNCHRONOUS ;
 int strcmp (char const*,char*) ;
 int ubifs_msg (char*,char const*) ;

__attribute__((used)) static int parse_standard_option(const char *option)
{
 ubifs_msg("parse %s", option);
 if (!strcmp(option, "sync"))
  return MS_SYNCHRONOUS;
 return 0;
}
