
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_memory_to_file (char*,char*,char*) ;

__attribute__((used)) static void
dump_memory_command (char *cmd, char *mode)
{
  dump_memory_to_file (cmd, mode, "binary");
}
