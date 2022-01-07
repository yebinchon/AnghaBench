
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int win; } ;
typedef TYPE_1__ LIST ;


 int beep () ;
 scalar_t__ change_list (int,TYPE_1__*) ;
 scalar_t__ data_of (TYPE_1__*) ;
 int getmaxy (int ) ;

__attribute__((used)) static void
scroll_list(int direction, LIST * list)
{
    if (data_of(list) != 0) {
 int length = getmaxy(list->win);
 if (change_list(direction * length, list))
     return;
    }
    beep();
}
