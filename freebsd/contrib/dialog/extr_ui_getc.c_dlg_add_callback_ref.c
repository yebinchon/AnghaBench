
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freeback; struct TYPE_4__** caller; } ;
typedef int DIALOG_FREEBACK ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int dlg_add_callback (TYPE_1__*) ;

void
dlg_add_callback_ref(DIALOG_CALLBACK ** p, DIALOG_FREEBACK freeback)
{
    (*p)->caller = p;
    (*p)->freeback = freeback;
    dlg_add_callback(*p);
}
