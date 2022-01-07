
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ screen_initialized; } ;


 scalar_t__ FALSE ;
 TYPE_1__ dialog_state ;
 int endwin () ;
 int fflush (int ) ;
 int mouse_close () ;
 int stdout ;

void
end_dialog(void)
{
    if (dialog_state.screen_initialized) {
 dialog_state.screen_initialized = FALSE;
 mouse_close();
 (void) endwin();
 (void) fflush(stdout);
    }
}
