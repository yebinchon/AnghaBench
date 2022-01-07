
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision {struct decision* next; } ;


 int debug_decision_0 (struct decision*,int ,int ) ;

void
debug_decision_list (struct decision *d)
{
  while (d)
    {
      debug_decision_0 (d, 0, 0);
      d = d->next;
    }
}
