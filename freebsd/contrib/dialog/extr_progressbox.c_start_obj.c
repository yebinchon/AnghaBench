
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int win; } ;
struct TYPE_5__ {char* prompt; int high; int text; TYPE_1__ obj; scalar_t__ wide; } ;
typedef TYPE_2__ MY_OBJ ;


 int ACS_HLINE ;
 int FALSE ;
 int MARGIN ;
 int MIN_HIGH ;
 int MIN_WIDE ;
 int border2_attr ;
 int border_attr ;
 int dialog_attr ;
 int dlg_attr_clear (int ,int,int,int ) ;
 int dlg_attrset (int ,int ) ;
 int dlg_auto_size (char const*,char*,int*,scalar_t__*,int ,int ) ;
 int dlg_box_x_ordinate (scalar_t__) ;
 int dlg_box_y_ordinate (int) ;
 int dlg_boxchar (int ) ;
 int dlg_ctl_size (int,scalar_t__) ;
 int dlg_draw_box2 (int ,int ,int ,int,scalar_t__,int ,int ,int ) ;
 int dlg_draw_helpline (int ,int ) ;
 int dlg_draw_title (int ,char const*) ;
 int dlg_new_window (int,scalar_t__,int,int) ;
 int dlg_print_autowrap (int ,char*,int,scalar_t__) ;
 int dlg_print_size (int,scalar_t__) ;
 char* dlg_strclone (char const*) ;
 int dlg_sub_window (int ,int,scalar_t__,int,int) ;
 int dlg_tab_correct_str (char*) ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int getyx (int ,int,int) ;
 int waddch (int ,int ) ;
 int wmove (int ,int,int) ;
 int wnoutrefresh (int ) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
start_obj(MY_OBJ * obj, const char *title, const char *cprompt)
{
    int y, x, thigh;
    int i;

    obj->prompt = dlg_strclone(cprompt);
    dlg_tab_correct_str(obj->prompt);
    dlg_auto_size(title, obj->prompt, &obj->high, &obj->wide, MIN_HIGH, MIN_WIDE);

    dlg_print_size(obj->high, obj->wide);
    dlg_ctl_size(obj->high, obj->wide);

    x = dlg_box_x_ordinate(obj->wide);
    y = dlg_box_y_ordinate(obj->high);
    thigh = obj->high - (2 * MARGIN);

    obj->obj.win = dlg_new_window(obj->high, obj->wide, y, x);

    dlg_draw_box2(obj->obj.win,
    0, 0,
    obj->high, obj->wide,
    dialog_attr,
    border_attr,
    border2_attr);
    dlg_draw_title(obj->obj.win, title);
    dlg_draw_helpline(obj->obj.win, FALSE);

    if (obj->prompt[0] != '\0') {
 int y2, x2;

 dlg_attrset(obj->obj.win, dialog_attr);
 dlg_print_autowrap(obj->obj.win, obj->prompt, obj->high, obj->wide);
 getyx(obj->obj.win, y2, x2);
 (void) x2;
 ++y2;
 wmove(obj->obj.win, y2, MARGIN);
 for (i = 0; i < getmaxx(obj->obj.win) - 2 * MARGIN; i++)
     (void) waddch(obj->obj.win, dlg_boxchar(ACS_HLINE));
 y += y2;
 thigh -= y2;
    }


    obj->text = dlg_sub_window(obj->obj.win,
          thigh,
          obj->wide - (2 * MARGIN),
          y + MARGIN,
          x + MARGIN);

    (void) wrefresh(obj->obj.win);

    (void) wmove(obj->obj.win, getmaxy(obj->text), (MARGIN + 1));
    (void) wnoutrefresh(obj->obj.win);

    dlg_attr_clear(obj->text, getmaxy(obj->text), getmaxx(obj->text), dialog_attr);
}
