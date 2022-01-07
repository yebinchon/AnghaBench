
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {scalar_t__ class; struct cmd_list_element* next; } ;


 scalar_t__ class_user ;
 int error (char*) ;
 int gdb_stdout ;
 struct cmd_list_element* lookup_cmd (char**,struct cmd_list_element*,char*,int ,int) ;
 int show_user_1 (struct cmd_list_element*,int ) ;

__attribute__((used)) static void
show_user (char *args, int from_tty)
{
  struct cmd_list_element *c;
  extern struct cmd_list_element *cmdlist;

  if (args)
    {
      c = lookup_cmd (&args, cmdlist, "", 0, 1);
      if (c->class != class_user)
 error ("Not a user command.");
      show_user_1 (c, gdb_stdout);
    }
  else
    {
      for (c = cmdlist; c; c = c->next)
 {
   if (c->class == class_user)
     show_user_1 (c, gdb_stdout);
 }
    }
}
