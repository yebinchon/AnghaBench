
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_value_to_file (char*,char*,char*) ;

__attribute__((used)) static void
dump_value_command (char *cmd, char *mode)
{
  dump_value_to_file (cmd, mode, "binary");
}
