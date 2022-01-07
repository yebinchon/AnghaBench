
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdnames {unsigned int cnt; TYPE_1__** names; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void uniq(struct cmdnames *cmds)
{
 unsigned int i, j;

 if (!cmds->cnt)
  return;

 for (i = j = 1; i < cmds->cnt; i++)
  if (strcmp(cmds->names[i]->name, cmds->names[i-1]->name))
   cmds->names[j++] = cmds->names[i];

 cmds->cnt = j;
}
