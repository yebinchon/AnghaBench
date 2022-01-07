
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int current_gdbarch ;
 struct ui_file* gdb_fopen (char*,char*) ;
 struct ui_file* gdb_stdout ;
 int gdbarch_dump (int ,struct ui_file*) ;
 int perror_with_name (char*) ;
 int ui_file_delete (struct ui_file*) ;

__attribute__((used)) static void
maintenance_print_architecture (char *args, int from_tty)
{
  if (args == ((void*)0))
    gdbarch_dump (current_gdbarch, gdb_stdout);
  else
    {
      struct ui_file *file = gdb_fopen (args, "w");
      if (file == ((void*)0))
 perror_with_name ("maintenance print architecture");
      gdbarch_dump (current_gdbarch, file);
      ui_file_delete (file);
    }
}
