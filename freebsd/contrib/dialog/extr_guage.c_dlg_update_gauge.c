
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int finish_string; } ;
struct TYPE_4__ {int percent; } ;
typedef TYPE_1__ MY_OBJ ;


 int TRUE ;
 int curs_set (int ) ;
 TYPE_3__ dialog_state ;
 int repaint_text (TYPE_1__*) ;

void
dlg_update_gauge(void *objptr, int percent)
{
    MY_OBJ *obj = (MY_OBJ *) objptr;
    bool save_finish_string = dialog_state.finish_string;

    dialog_state.finish_string = TRUE;
    curs_set(0);
    obj->percent = percent;
    repaint_text(obj);
    dialog_state.finish_string = save_finish_string;
}
