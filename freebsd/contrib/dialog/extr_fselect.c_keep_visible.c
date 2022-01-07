
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int choice; int offset; int win; } ;
typedef TYPE_1__ LIST ;


 int getmaxy (int ) ;

__attribute__((used)) static void
keep_visible(LIST * list)
{
    int high = getmaxy(list->win);

    if (list->choice < list->offset) {
 list->offset = list->choice;
    }
    if (list->choice - list->offset >= high)
 list->offset = list->choice - high + 1;
}
