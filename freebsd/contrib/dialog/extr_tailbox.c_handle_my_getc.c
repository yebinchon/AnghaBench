
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int input; } ;
struct TYPE_7__ {int hscroll; scalar_t__ old_hscroll; int buttons; } ;
typedef TYPE_1__ MY_OBJ ;
typedef TYPE_2__ DIALOG_CALLBACK ;






 int DLG_EXIT_ESC ;
 int DLG_EXIT_OK ;
 int EOF ;


 int FALSE ;
 int MAX_LEN ;
 int TRUE ;
 int beep () ;
 int clearerr (int ) ;
 scalar_t__ dlg_char_to_button (int,int ) ;
 int getc (int ) ;
 int handle_input (TYPE_2__*) ;
 int repaint_text (TYPE_1__*) ;
 int ungetc (int,int ) ;
 int valid_callback (TYPE_2__*) ;

__attribute__((used)) static bool
handle_my_getc(DIALOG_CALLBACK * cb, int ch, int fkey, int *result)
{
    MY_OBJ *obj = (MY_OBJ *) cb;
    bool done = FALSE;

    if (!valid_callback(cb))
 return FALSE;

    if (!fkey && dlg_char_to_button(ch, obj->buttons) == 0) {
 ch = 132;
 fkey = TRUE;
    }

    if (fkey) {
 switch (ch) {
 case 132:
     *result = DLG_EXIT_OK;
     done = TRUE;
     break;
 case 133:
     obj->hscroll = 0;
     break;
 case 131:
     if (obj->hscroll > 0) {
  obj->hscroll -= 1;
     }
     break;
 case 130:
     if (obj->hscroll < MAX_LEN)
  obj->hscroll += 1;
     break;
 default:
     beep();
     break;
 }
 if ((obj->hscroll != obj->old_hscroll))
     repaint_text(obj);
    } else {
 switch (ch) {
 case 129:
     clearerr(cb->input);
     ch = getc(cb->input);
     (void) ungetc(ch, cb->input);
     if (ch != EOF) {
  handle_input(cb);
     }
     break;
 case 128:
     done = TRUE;
     *result = DLG_EXIT_ESC;
     break;
 default:
     beep();
     break;
 }
    }

    return !done;
}
