
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdnames {unsigned int cnt; TYPE_1__** names; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (char const*,int ) ;

int is_in_cmdlist(struct cmdnames *c, const char *s)
{
 unsigned int i;

 for (i = 0; i < c->cnt; i++)
  if (!strcmp(s, c->names[i]->name))
   return 1;
 return 0;
}
