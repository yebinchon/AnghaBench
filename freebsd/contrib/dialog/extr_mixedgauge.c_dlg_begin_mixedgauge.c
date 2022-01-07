
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int text; int name; } ;
struct TYPE_6__ {char const* title; scalar_t__* prompt; int height; int old_height; int width; int old_width; int item_no; int len_name; int len_text; int min_width; int dialog; int caption; scalar_t__ min_height; TYPE_3__* list; } ;
typedef TYPE_1__ DIALOG_MIXEDGAUGE ;


 int DIALOG_LISTITEM ;
 scalar_t__ ERR ;
 int FALSE ;
 int GUTTER ;
 int ItemName (int) ;
 int ItemText (int) ;
 int MARGIN ;
 scalar_t__ MIN_HIGH ;
 int MIN_WIDE ;
 int TRUE ;
 int assert_ptr (TYPE_3__*,char*) ;
 int border2_attr ;
 int border_attr ;
 scalar_t__* clean_copy (char const*) ;
 int curs_set (int ) ;
 int dialog_attr ;
 int dlg_attrset (int ,int ) ;
 int dlg_auto_size (char const*,scalar_t__*,int*,int*,scalar_t__,int) ;
 int dlg_box_x_ordinate (int) ;
 int dlg_box_y_ordinate (int) ;
 TYPE_3__* dlg_calloc (int ,size_t) ;
 int dlg_ctl_size (int,int) ;
 int dlg_del_window (int ) ;
 int dlg_draw_box2 (int ,int ,int ,int,int,int ,int ,int ) ;
 int dlg_draw_helpline (int ,int ) ;
 int dlg_draw_title (int ,char const*) ;
 int dlg_new_window (int,int,int,int) ;
 int dlg_print_autowrap (int ,scalar_t__*,int,int) ;
 int dlg_print_size (int,int) ;
 int dlg_sub_window (int ,int,int,int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mydraw_mixed_box (int ,int,int,int,int,int ,int ) ;
 int nodelay (int ,int ) ;
 int stdscr ;
 scalar_t__ strlen (int ) ;
 int werase (int ) ;
 scalar_t__ wmove (int ,int,int ) ;

__attribute__((used)) static void
dlg_begin_mixedgauge(DIALOG_MIXEDGAUGE * dlg,
       int *began,
       const char *aTitle,
       const char *aPrompt,
       int aHeight,
       int aWidth,
       int aItemNo,
       char **items)
{
    int n, y, x;

    if (!*began) {
 curs_set(0);

 memset(dlg, 0, sizeof(*dlg));
 dlg->title = aTitle;
 dlg->prompt = clean_copy(aPrompt);
 dlg->height = dlg->old_height = aHeight;
 dlg->width = dlg->old_width = aWidth;
 dlg->item_no = aItemNo;

 dlg->list = dlg_calloc(DIALOG_LISTITEM, (size_t) aItemNo);
 assert_ptr(dlg->list, "dialog_mixedgauge");

 dlg->len_name = 0;
 dlg->len_text = 15;

 for (n = 0; n < aItemNo; ++n) {
     int thisWidth = (int) strlen(ItemName(n));
     if (dlg->len_name < thisWidth)
  dlg->len_name = thisWidth;
     dlg->list[n].name = ItemName(n);
     dlg->list[n].text = ItemText(n);
 }

 dlg->min_height = MIN_HIGH + aItemNo;
 dlg->min_width = MIN_WIDE + dlg->len_name + GUTTER + dlg->len_text;

 if (dlg->prompt != 0 && *(dlg->prompt) != 0)
     dlg->min_height += (2 * MARGIN);



    }
    dlg_auto_size(dlg->title, dlg->prompt,
    &(dlg->height),
    &(dlg->width),
    dlg->min_height,
    dlg->min_width);
    dlg_print_size(dlg->height, dlg->width);
    dlg_ctl_size(dlg->height, dlg->width);


    x = dlg_box_x_ordinate(dlg->width);
    y = dlg_box_y_ordinate(dlg->height);

    dlg->dialog = dlg_new_window(dlg->height, dlg->width, y, x);

    (void) werase(dlg->dialog);
    dlg_draw_box2(dlg->dialog,
    0, 0,
    dlg->height,
    dlg->width,
    dialog_attr, border_attr, border2_attr);

    dlg_draw_title(dlg->dialog, dlg->title);
    dlg_draw_helpline(dlg->dialog, FALSE);

    if ((dlg->prompt != 0 && *(dlg->prompt) != 0)
 && wmove(dlg->dialog, dlg->item_no, 0) != ERR) {
 dlg->caption = dlg_sub_window(dlg->dialog,
          dlg->height - dlg->item_no - (2 * MARGIN),
          dlg->width,
          y + dlg->item_no + (2 * MARGIN),
          x);
 dlg_attrset(dlg->caption, dialog_attr);
 dlg_print_autowrap(dlg->caption, dlg->prompt, dlg->height, dlg->width);
    }

    mydraw_mixed_box(dlg->dialog,
       dlg->height - 4,
       2 + MARGIN,
       2 + MARGIN,
       dlg->width - 2 * (2 + MARGIN),
       dialog_attr,
       border_attr);

    *began += 1;
}
