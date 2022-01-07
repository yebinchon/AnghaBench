
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int DIALOG_VARS ;


 int dlg_del_window (int *) ;
 int dlg_mouse_free_regions () ;
 int dlg_restore_vars (int *) ;
 int free (char*) ;

__attribute__((used)) static int
CleanupResult(int code, WINDOW *dialog, char *prompt, DIALOG_VARS * save_vars)
{
    dlg_del_window(dialog);
    dlg_mouse_free_regions();
    free(prompt);
    dlg_restore_vars(save_vars);

    return code;
}
