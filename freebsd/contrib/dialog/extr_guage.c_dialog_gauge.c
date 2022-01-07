
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int keep_win; scalar_t__ input; scalar_t__ caller; int win; } ;
struct TYPE_7__ {int percent; TYPE_3__ obj; } ;
typedef TYPE_1__ MY_OBJ ;
typedef int DIALOG_CALLBACK ;


 int DLG_EXIT_OK ;
 int DLG_TRACE (char*) ;
 int DLG_TRACE2N (char*,int) ;
 int DLG_TRACE2S (char*,char const*) ;
 int FALSE ;
 int KEY_RESIZE ;
 int dlg_add_callback_ref (int **,int ) ;
 void* dlg_allocate_gauge (char const*,char const*,int,int,int) ;
 int dlg_clear () ;
 int dlg_free_gauge (TYPE_1__*) ;
 int dlg_getc (int ,int*) ;
 int dlg_mouse_free_regions () ;
 int dlg_remove_callback (TYPE_3__*) ;
 int dlg_trace_win (int ) ;
 int dlg_update_gauge (TYPE_1__*,int) ;
 int dlg_will_resize (int ) ;
 scalar_t__ handle_my_getc (TYPE_3__*,int,int,int*) ;
 int my_cleanup ;
 int refresh () ;
 scalar_t__ valid (TYPE_1__*) ;

int
dialog_gauge(const char *title,
      const char *cprompt,
      int height,
      int width,
      int percent)
{
    int fkey;
    int ch, result;
    void *objptr = dlg_allocate_gauge(title, cprompt, height, width, percent);
    MY_OBJ *obj = (MY_OBJ *) objptr;

    DLG_TRACE(("# gauge args:\n"));
    DLG_TRACE2S("title", title);
    DLG_TRACE2S("message", cprompt);
    DLG_TRACE2N("height", height);
    DLG_TRACE2N("width", width);
    DLG_TRACE2N("percent", percent);

    dlg_add_callback_ref((DIALOG_CALLBACK **) & obj, my_cleanup);
    dlg_update_gauge(obj, percent);

    dlg_trace_win(obj->obj.win);
    do {
 ch = dlg_getc(obj->obj.win, &fkey);
    }
    while (valid(obj) && handle_my_getc(&(obj->obj), ch, fkey, &result));

    dlg_free_gauge(obj);

    return (DLG_EXIT_OK);
}
