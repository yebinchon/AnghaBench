
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static int
parse_int_arg (char *args, char *cmd_prefix)
{
  if (args)
    {
      char *arg_end;
      int val = strtoul (args, &arg_end, 10);
      if (*args && *arg_end == '\0')
 return val;
    }
  error ("Illegal argument for \"%s\" command, should be an integer.", cmd_prefix);
}
