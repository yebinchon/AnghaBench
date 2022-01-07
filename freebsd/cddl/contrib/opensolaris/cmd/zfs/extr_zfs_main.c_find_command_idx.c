
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;


 int NCOMMAND ;
 TYPE_1__* command_table ;
 scalar_t__ strcmp (char*,int *) ;

__attribute__((used)) static int
find_command_idx(char *command, int *idx)
{
 int i;

 for (i = 0; i < NCOMMAND; i++) {
  if (command_table[i].name == ((void*)0))
   continue;

  if (strcmp(command, command_table[i].name) == 0) {
   *idx = i;
   return (0);
  }
 }
 return (1);
}
