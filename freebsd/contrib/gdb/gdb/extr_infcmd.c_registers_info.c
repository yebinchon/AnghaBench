
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroup {int dummy; } ;


 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int current_gdbarch ;
 int * deprecated_selected_frame ;
 int error (char*,...) ;
 int frame_map_name_to_regnum (int *,char*,int) ;
 int gdb_stdout ;
 int gdbarch_print_registers_info (int ,int ,int *,int,int) ;
 scalar_t__ gdbarch_register_reggroup_p (int ,int,struct reggroup*) ;
 scalar_t__ isspace (char) ;
 int reggroup_name (struct reggroup*) ;
 struct reggroup* reggroup_next (int ,struct reggroup*) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int strtol (char*,char**,int ) ;
 int target_has_registers ;

void
registers_info (char *addr_exp, int fpregs)
{
  int regnum, numregs;
  char *end;

  if (!target_has_registers)
    error ("The program has no registers now.");
  if (deprecated_selected_frame == ((void*)0))
    error ("No selected frame.");

  if (!addr_exp)
    {
      gdbarch_print_registers_info (current_gdbarch, gdb_stdout,
        deprecated_selected_frame, -1, fpregs);
      return;
    }

  while (*addr_exp != '\0')
    {
      char *start;
      const char *end;


      if (isspace ((*addr_exp)))
 {
   addr_exp++;
   continue;
 }



      if (addr_exp[0] == '$')
 addr_exp++;
      if (isspace ((*addr_exp)) || (*addr_exp) == '\0')
 error ("Missing register name");


      start = addr_exp;
      while ((*addr_exp) != '\0' && !isspace ((*addr_exp)))
 addr_exp++;
      end = addr_exp;




      {
 int regnum = frame_map_name_to_regnum (deprecated_selected_frame,
            start, end - start);
 if (regnum >= 0)
   {
     gdbarch_print_registers_info (current_gdbarch, gdb_stdout,
       deprecated_selected_frame, regnum, fpregs);
     continue;
   }
      }


      {
 char *endptr;
 int regnum = strtol (start, &endptr, 0);
 if (endptr == end
     && regnum >= 0
     && regnum < NUM_REGS + NUM_PSEUDO_REGS)
   {
     gdbarch_print_registers_info (current_gdbarch, gdb_stdout,
       deprecated_selected_frame, regnum, fpregs);
     continue;
   }
      }


      {
 struct reggroup *group;
 for (group = reggroup_next (current_gdbarch, ((void*)0));
      group != ((void*)0);
      group = reggroup_next (current_gdbarch, group))
   {



     if (strncmp (start, reggroup_name (group), end - start) == 0)
       break;
   }
 if (group != ((void*)0))
   {
     int regnum;
     for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
       {
  if (gdbarch_register_reggroup_p (current_gdbarch, regnum,
       group))
    gdbarch_print_registers_info (current_gdbarch,
      gdb_stdout, deprecated_selected_frame,
      regnum, fpregs);
       }
     continue;
   }
      }


      error ("Invalid register `%.*s'", (int) (end - start), start);
    }
}
