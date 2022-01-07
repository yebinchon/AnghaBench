
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_id; struct TYPE_4__* c_next; } ;
typedef TYPE_1__ callout ;


 TYPE_1__ callouts ;
 int free_callout (TYPE_1__*) ;

void
untimeout(int id)
{
  callout *cp, *cp2;
  for (cp = &callouts; (cp2 = cp->c_next); cp = cp2) {
    if (cp2->c_id == id) {
      cp->c_next = cp2->c_next;
      free_callout(cp2);
      break;
    }
  }
}
