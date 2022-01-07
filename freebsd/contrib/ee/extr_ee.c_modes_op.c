
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_string; } ;


 int A_NC_BIG5 ;
 int FALSE ;
 char* OFF ;
 char* ON ;
 void* TRUE ;
 int atoi (char*) ;
 int auto_format ;
 int case_sen ;
 int create_info_window () ;
 int ee_chinese ;
 int eightbit ;
 int emacs_keys_mode ;
 int expand_tabs ;
 int free (char*) ;
 char* get_string (int ,void*) ;
 scalar_t__ info_window ;
 int margin_prompt ;
 int menu_op (TYPE_1__*) ;
 char** mode_strings ;
 TYPE_1__* modes_menu ;
 int nc_clearattrib (int ) ;
 int nc_setattrib (int ) ;
 int no_info_window () ;
 int observ_margins ;
 int paint_info_win () ;
 int redraw () ;
 int right_margin ;
 int sprintf (int ,char*,char*,...) ;
 int text_win ;
 int wnoutrefresh (int ) ;

void
modes_op()
{
 int ret_value;
 int counter;
 char *string;

 do
 {
  sprintf(modes_menu[1].item_string, "%s %s", mode_strings[1],
     (expand_tabs ? ON : OFF));
  sprintf(modes_menu[2].item_string, "%s %s", mode_strings[2],
     (case_sen ? ON : OFF));
  sprintf(modes_menu[3].item_string, "%s %s", mode_strings[3],
     (observ_margins ? ON : OFF));
  sprintf(modes_menu[4].item_string, "%s %s", mode_strings[4],
     (auto_format ? ON : OFF));
  sprintf(modes_menu[5].item_string, "%s %s", mode_strings[5],
     (eightbit ? ON : OFF));
  sprintf(modes_menu[6].item_string, "%s %s", mode_strings[6],
     (info_window ? ON : OFF));
  sprintf(modes_menu[7].item_string, "%s %s", mode_strings[7],
     (emacs_keys_mode ? ON : OFF));
  sprintf(modes_menu[8].item_string, "%s %d", mode_strings[8],
     right_margin);
  sprintf(modes_menu[9].item_string, "%s %s", mode_strings[9],
     (ee_chinese ? ON : OFF));

  ret_value = menu_op(modes_menu);

  switch (ret_value)
  {
   case 1:
    expand_tabs = !expand_tabs;
    break;
   case 2:
    case_sen = !case_sen;
    break;
   case 3:
    observ_margins = !observ_margins;
    break;
   case 4:
    auto_format = !auto_format;
    if (auto_format)
     observ_margins = TRUE;
    break;
   case 5:
    eightbit = !eightbit;
    if (!eightbit)
     ee_chinese = FALSE;







    redraw();
    wnoutrefresh(text_win);
    break;
   case 6:
    if (info_window)
     no_info_window();
    else
     create_info_window();
    break;
   case 7:
    emacs_keys_mode = !emacs_keys_mode;
    if (info_window)
     paint_info_win();
    break;
   case 8:
    string = get_string(margin_prompt, TRUE);
    if (string != ((void*)0))
    {
     counter = atoi(string);
     if (counter > 0)
      right_margin = counter;
     free(string);
    }
    break;
   case 9:
    ee_chinese = !ee_chinese;
    if (ee_chinese != FALSE)
     eightbit = TRUE;






    redraw();
    break;
   default:
    break;
  }
 }
 while (ret_value != 0);
}
