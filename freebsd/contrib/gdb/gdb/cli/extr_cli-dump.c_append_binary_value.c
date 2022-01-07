
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FOPEN_AB ;
 int dump_value_to_file (char*,int ,char*) ;

__attribute__((used)) static void
append_binary_value (char *args, int from_tty)
{
  dump_value_to_file (args, FOPEN_AB, "binary");
}
