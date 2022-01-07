
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ASM_SWITCHES ;
 scalar_t__ alloca (scalar_t__) ;
 char* as_flags ;
 int as_name ;
 int run (int ,char*) ;
 int sprintf (char*,char*,char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
assemble_file (const char * source, const char * dest)
{
  char * cmd;

  cmd = (char *) alloca (strlen (ASM_SWITCHES) + strlen (as_flags)
    + strlen (source) + strlen (dest) + 50);

  sprintf (cmd, "%s %s -o %s %s", ASM_SWITCHES, as_flags, dest, source);

  run (as_name, cmd);
}
