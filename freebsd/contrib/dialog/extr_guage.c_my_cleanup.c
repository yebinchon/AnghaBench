
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int win; } ;
struct TYPE_6__ {scalar_t__ prompt; scalar_t__ prompt_buf; scalar_t__ title; TYPE_1__ obj; } ;
typedef TYPE_2__ MY_OBJ ;
typedef int DIALOG_CALLBACK ;


 int delink (TYPE_2__*) ;
 int dlg_del_window (int ) ;
 int free (scalar_t__) ;
 scalar_t__ valid (TYPE_2__*) ;

__attribute__((used)) static void
my_cleanup(DIALOG_CALLBACK * cb)
{
    MY_OBJ *obj = (MY_OBJ *) cb;

    if (valid(obj)) {
 if (obj->prompt != obj->prompt_buf) {
     free(obj->prompt);
     obj->prompt = obj->prompt_buf;
 }
 free(obj->title);
 dlg_del_window(obj->obj.win);
 delink(obj);
    }
}
