
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int pc; } ;
struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int break_command_1 (char*,int,int,int *) ;
 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 scalar_t__ default_breakpoint_valid ;
 scalar_t__ deprecated_selected_frame ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 scalar_t__ find_pc_partial_function (int ,char**,int *,int *) ;
 int get_frame_pc (scalar_t__) ;
 struct cleanup* make_cleanup (int (*) (char*),struct symtab_and_line*) ;
 int paddr_nz (int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int warning (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;
 char* xstrprintf (char*,int ,...) ;

__attribute__((used)) static void
break_at_finish_command_1 (char *arg, int flag, int from_tty)
{
  char *addr_string, *break_string, *beg_addr_string;
  CORE_ADDR low, high;
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct cleanup *old_chain;
  char *extra_args = ((void*)0);
  int extra_args_len = 0;
  int i, if_arg = 0;

  if (!arg ||
      (arg[0] == 'i' && arg[1] == 'f' && (arg[2] == ' ' || arg[2] == '\t')))
    {
      if (default_breakpoint_valid)
 {
   if (deprecated_selected_frame)
     {
       addr_string = xstrprintf ("*0x%s",
     paddr_nz (get_frame_pc (deprecated_selected_frame)));
       if (arg)
  if_arg = 1;
     }
   else
     error ("No selected frame.");
 }
      else
 error ("No default breakpoint address now.");
    }
  else
    {
      addr_string = (char *) xmalloc (strlen (arg) + 1);
      strcpy (addr_string, arg);
    }

  if (if_arg)
    {
      extra_args = arg;
      extra_args_len = strlen (arg);
    }
  else if (arg)
    {

      extra_args = strchr (arg, ' ');
      if (extra_args)
 {
   extra_args++;
   extra_args_len = strlen (extra_args);
 }
    }

  sals.sals = ((void*)0);
  sals.nelts = 0;

  beg_addr_string = addr_string;
  sals = decode_line_1 (&addr_string, 1, (struct symtab *) ((void*)0), 0,
   (char ***) ((void*)0), ((void*)0));

  xfree (beg_addr_string);
  old_chain = make_cleanup (xfree, sals.sals);
  for (i = 0; (i < sals.nelts); i++)
    {
      sal = sals.sals[i];
      if (find_pc_partial_function (sal.pc, (char **) ((void*)0), &low, &high))
 {
   break_string;
   if (extra_args_len)
     break_string = xstrprintf ("*0x%s %s", paddr_nz (high),
           extra_args);
   else
     break_string = xstrprintf ("*0x%s", paddr_nz (high));
   break_command_1 (break_string, flag, from_tty, ((void*)0));
   xfree (break_string);
 }
      else
 error ("No function contains the specified address");
    }
  if (sals.nelts > 1)
    {
      warning ("Multiple breakpoints were set.\n");
      warning ("Use the \"delete\" command to delete unwanted breakpoints.");
    }
  do_cleanups (old_chain);
}
