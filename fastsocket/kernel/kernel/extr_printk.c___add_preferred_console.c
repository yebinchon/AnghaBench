
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_cmdline {int index; char* options; char* brl_options; scalar_t__* name; } ;


 int E2BIG ;
 int MAX_CMDLINECONSOLES ;
 struct console_cmdline* console_cmdline ;
 int selected_console ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 int strlcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static int __add_preferred_console(char *name, int idx, char *options,
       char *brl_options)
{
 struct console_cmdline *c;
 int i;





 for (i = 0; i < MAX_CMDLINECONSOLES && console_cmdline[i].name[0]; i++)
  if (strcmp(console_cmdline[i].name, name) == 0 &&
     console_cmdline[i].index == idx) {
    if (!brl_options)
     selected_console = i;
    return 0;
  }
 if (i == MAX_CMDLINECONSOLES)
  return -E2BIG;
 if (!brl_options)
  selected_console = i;
 c = &console_cmdline[i];
 strlcpy(c->name, name, sizeof(c->name));
 c->options = options;



 c->index = idx;
 return 0;
}
