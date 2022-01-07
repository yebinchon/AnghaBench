
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {unsigned int cnt; int * names; int alloc; } ;


 int ALLOC_GROW (int *,unsigned int,int ) ;
 int free (int *) ;

__attribute__((used)) static void add_cmd_list(struct cmdnames *cmds, struct cmdnames *old)
{
 unsigned int i;

 ALLOC_GROW(cmds->names, cmds->cnt + old->cnt, cmds->alloc);

 for (i = 0; i < old->cnt; i++)
  cmds->names[cmds->cnt++] = old->names[i];
 free(old->names);
 old->cnt = 0;
 old->names = ((void*)0);
}
