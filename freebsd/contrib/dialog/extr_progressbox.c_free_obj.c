
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int win; } ;
struct TYPE_7__ {struct TYPE_7__* text; struct TYPE_7__* link; struct TYPE_7__* wrote; struct TYPE_7__* prompt; TYPE_1__ obj; } ;
typedef TYPE_2__ WROTE ;
typedef TYPE_2__ MY_OBJ ;


 int dlg_del_window (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void
free_obj(MY_OBJ * obj)
{
    dlg_del_window(obj->obj.win);
    free(obj->prompt);
    free(obj);
}
