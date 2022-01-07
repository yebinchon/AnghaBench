
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {scalar_t__ text_flen; int text_y; int name_y; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;


 int FALSE ;
 int MAX (int ,int ) ;
 int MIN (int ,int ) ;
 int TRUE ;
 int beep () ;
 int getmaxy (int *) ;
 scalar_t__ is_readonly (TYPE_1__*) ;
 int print_item (int *,TYPE_1__*,int,int) ;
 int scrollok (int *,int) ;
 int wscrl (int *,int) ;

__attribute__((used)) static bool
tab_next(WINDOW *win,
  DIALOG_FORMITEM item[],
  int item_no,
  int stepsize,
  int *choice,
  int *scrollamt)
{
    int old_choice = *choice;
    int old_scroll = *scrollamt;
    bool wrapped = FALSE;

    do {
 do {
     *choice += stepsize;
     if (*choice < 0) {
  *choice = item_no - 1;
  wrapped = TRUE;
     } else if (*choice >= item_no) {
  *choice = 0;
  wrapped = TRUE;
     }
 } while ((*choice != old_choice) && is_readonly(&(item[*choice])));

 if (item[*choice].text_flen > 0) {
     int lo = MIN(item[*choice].name_y, item[*choice].text_y);
     int hi = MAX(item[*choice].name_y, item[*choice].text_y);

     if (old_choice == *choice)
  break;
     print_item(win, item + old_choice, *scrollamt, FALSE);

     if (*scrollamt < lo + 1 - getmaxy(win))
  *scrollamt = lo + 1 - getmaxy(win);
     if (*scrollamt > hi)
  *scrollamt = hi;






     if (*scrollamt != old_scroll) {
  if (wrapped) {
      beep();
      *scrollamt = old_scroll;
      *choice = old_choice;
  } else {
      scrollok(win, TRUE);
      wscrl(win, *scrollamt - old_scroll);
      scrollok(win, FALSE);
  }
     }
     break;
 }
    } while (*choice != old_choice);

    return (old_choice != *choice) || (old_scroll != *scrollamt);
}
