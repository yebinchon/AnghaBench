
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int choice; } ;
typedef TYPE_1__ LIST ;


 int FALSE ;
 int TRUE ;
 scalar_t__ data_of (TYPE_1__*) ;
 int display_list (TYPE_1__*) ;
 int keep_visible (TYPE_1__*) ;

__attribute__((used)) static bool
change_list(int choice, LIST * list)
{
    if (data_of(list) != 0) {
 int last = list->length - 1;

 choice += list->choice;
 if (choice < 0)
     choice = 0;
 if (choice > last)
     choice = last;
 list->choice = choice;
 keep_visible(list);
 display_list(list);
 return TRUE;
    }
    return FALSE;
}
