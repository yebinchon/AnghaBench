
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int win; } ;
struct TYPE_5__ {TYPE_1__ obj; int old_wide; int wide; int old_high; int high; int prompt; } ;
typedef TYPE_2__ MY_OBJ ;


 int dlg_clear () ;
 int dlg_del_window (int ) ;
 int free (int ) ;

__attribute__((used)) static void
restart_obj(MY_OBJ * obj)
{
    free(obj->prompt);
    obj->high = obj->old_high;
    obj->wide = obj->old_wide;
    dlg_clear();
    dlg_del_window(obj->obj.win);
}
