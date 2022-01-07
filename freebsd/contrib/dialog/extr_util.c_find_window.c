
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {TYPE_1__* all_windows; } ;
struct TYPE_4__ {int * normal; struct TYPE_4__* next; } ;
typedef TYPE_1__ DIALOG_WINDOWS ;


 TYPE_3__ dialog_state ;

__attribute__((used)) static DIALOG_WINDOWS *
find_window(WINDOW *win)
{
    DIALOG_WINDOWS *result = 0;
    DIALOG_WINDOWS *p;

    for (p = dialog_state.all_windows; p != 0; p = p->next) {
 if (p->normal == win) {
     result = p;
     break;
 }
    }
    return result;
}
