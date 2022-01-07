
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*,char*) ;

__attribute__((used)) static void
check_empty (char *args, char *cmd_prefix)
{
  if (args)
    error ("Garbage after \"%s\" command: `%s'", cmd_prefix, args);
}
