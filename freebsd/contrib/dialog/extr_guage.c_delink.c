
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ MY_OBJ ;


 TYPE_1__* all_objects ;

__attribute__((used)) static void
delink(MY_OBJ * obj)
{
    MY_OBJ *p = all_objects;
    MY_OBJ *q = 0;
    while (p != 0) {
 if (p == obj) {
     if (q != 0) {
  q->next = p->next;
     } else {
  all_objects = p->next;
     }
     break;
 }
 q = p;
 p = p->next;
    }
}
