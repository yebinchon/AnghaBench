
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_gdbarch ;
 int deprecated_selected_frame ;
 int gdb_stdout ;
 int print_vector_info (int ,int ,int ,char*) ;

__attribute__((used)) static void
vector_info (char *args, int from_tty)
{
  print_vector_info (current_gdbarch, gdb_stdout, deprecated_selected_frame, args);
}
