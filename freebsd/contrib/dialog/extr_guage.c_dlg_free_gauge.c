
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int keep_win; } ;
struct TYPE_5__ {TYPE_3__ obj; } ;
typedef TYPE_1__ MY_OBJ ;


 int FALSE ;
 int curs_set (int) ;
 int delink (TYPE_1__*) ;
 int dlg_remove_callback (TYPE_3__*) ;
 scalar_t__ valid (TYPE_1__*) ;

void
dlg_free_gauge(void *objptr)
{
    MY_OBJ *obj = (MY_OBJ *) objptr;

    if (valid(obj)) {
 obj->obj.keep_win = FALSE;
 dlg_remove_callback(&(obj->obj));
 delink(obj);
    }
    curs_set(1);
}
