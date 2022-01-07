
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int DIALOG_VARS ;


 int MAX_DAYS ;
 int MAX_MONTHS ;
 char** cached_days ;
 char** cached_months ;
 int dlg_del_window (int *) ;
 int dlg_mouse_free_regions () ;
 int dlg_restore_vars (int *) ;
 int free (char*) ;

__attribute__((used)) static int
CleanupResult(int code, WINDOW *dialog, char *prompt, DIALOG_VARS * save_vars)
{
    int n;

    if (dialog != 0)
 dlg_del_window(dialog);
    dlg_mouse_free_regions();
    if (prompt != 0)
 free(prompt);
    dlg_restore_vars(save_vars);

    for (n = 0; n < MAX_DAYS; ++n) {
 free(cached_days[n]);
 cached_days[n] = 0;
    }
    for (n = 0; n < MAX_MONTHS; ++n) {
 free(cached_months[n]);
 cached_months[n] = 0;
    }

    return code;
}
