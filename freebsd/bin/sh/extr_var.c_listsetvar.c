
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int count; int * args; } ;


 int INTOFF ;
 int INTON ;
 int savestr (int ) ;
 int setvareq (int ,int) ;

void
listsetvar(struct arglist *list, int flags)
{
 int i;

 INTOFF;
 for (i = 0; i < list->count; i++)
  setvareq(savestr(list->args[i]), flags);
 INTON;
}
