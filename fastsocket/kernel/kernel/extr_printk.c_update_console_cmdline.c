
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_cmdline {int index; char* options; scalar_t__* name; } ;


 int MAX_CMDLINECONSOLES ;
 struct console_cmdline* console_cmdline ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 int strlcpy (scalar_t__*,char*,int) ;

int update_console_cmdline(char *name, int idx, char *name_new, int idx_new, char *options)
{
 struct console_cmdline *c;
 int i;

 for (i = 0; i < MAX_CMDLINECONSOLES && console_cmdline[i].name[0]; i++)
  if (strcmp(console_cmdline[i].name, name) == 0 &&
     console_cmdline[i].index == idx) {
    c = &console_cmdline[i];
    strlcpy(c->name, name_new, sizeof(c->name));
    c->name[sizeof(c->name) - 1] = 0;
    c->options = options;
    c->index = idx_new;
    return i;
  }

 return -1;
}
