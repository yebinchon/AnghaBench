
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
_parse_bool_arg (char *args, char *t_val, char *f_val, char *cmd_prefix)
{
  if (!args || strcmp (args, t_val) == 0)
    return 1;
  else if (strcmp (args, f_val) == 0)
    return 0;
  else
    error ("Illegal argument for \"%s\" command, should be \"%s\" or \"%s\".",
    cmd_prefix, t_val, f_val);
}
