
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ MY_OBJ ;


 TYPE_1__* all_objects ;

__attribute__((used)) static int
valid(MY_OBJ * obj)
{
    MY_OBJ *list = all_objects;
    int result = 0;

    while (list != 0) {
 if (list == obj) {
     result = 1;
     break;
 }
 list = list->next;
    }
    return result;
}
