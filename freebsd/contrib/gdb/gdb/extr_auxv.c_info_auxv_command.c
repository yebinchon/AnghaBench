
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_target ;
 int error (char*) ;
 int fprint_target_auxv (int ,int *) ;
 int gdb_stdout ;
 int target_has_stack ;

__attribute__((used)) static void
info_auxv_command (char *cmd, int from_tty)
{
  if (! target_has_stack)
    error ("The program has no auxiliary information now.");
  else
    {
      int ents = fprint_target_auxv (gdb_stdout, &current_target);
      if (ents < 0)
 error ("No auxiliary vector found, or failed reading it.");
      else if (ents == 0)
 error ("Auxiliary vector is empty.");
    }
}
