
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_4__ {scalar_t__ text_only; } ;
struct TYPE_3__ {scalar_t__ colors; } ;


 int ESCAPE_LEN ;
 int TAB ;
 int UCH (char const) ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int dlg_count_wchars (char const*) ;
 int dlg_finish_string (char const*) ;
 int* dlg_index_columns (char const*) ;
 int* dlg_index_wchars (char const*) ;
 int dlg_print_text (int *,char const*,int const,int *) ;
 scalar_t__ isOurEscape (char const*) ;
 scalar_t__ is_combining (char const*,int*) ;
 scalar_t__ isblank (int) ;

const char *
dlg_print_line(WINDOW *win,
        chtype *attr,
        const char *prompt,
        int lm, int rm, int *x)
{
    const char *wrap_ptr;
    const char *test_ptr;
    const char *hide_ptr = 0;
    const int *cols = dlg_index_columns(prompt);
    const int *indx = dlg_index_wchars(prompt);
    int wrap_inx = 0;
    int test_inx = 0;
    int cur_x = lm;
    int hidden = 0;
    int limit = dlg_count_wchars(prompt);
    int n;
    int tabbed = 0;

    *x = 1;





    for (n = 0; n < limit; ++n) {
 int ch = *(test_ptr = prompt + indx[test_inx]);
 if (ch == '\n' || ch == '\0' || cur_x >= (rm + hidden))
     break;
 if (ch == TAB && n == 0) {
     tabbed = 8;
 } else if (isblank(UCH(ch))
     && n != 0
     && !isblank(UCH(prompt[indx[n - 1]]))) {
     wrap_inx = n;
     *x = cur_x;
 } else if (dialog_vars.colors && isOurEscape(test_ptr)) {
     hide_ptr = test_ptr;
     hidden += ESCAPE_LEN;
     n += (ESCAPE_LEN - 1);
 }
 cur_x = lm + tabbed + cols[n + 1];
 if (cur_x > (rm + hidden))
     break;
 test_inx = n + 1;
    }





    test_ptr = prompt + indx[test_inx];
    if (*test_ptr == '\n' || isblank(UCH(*test_ptr)) || *test_ptr == '\0') {
 wrap_inx = test_inx;
 while (wrap_inx > 0 && isblank(UCH(prompt[indx[wrap_inx - 1]]))) {
     wrap_inx--;
 }
 *x = lm + indx[wrap_inx];
    } else if (*x == 1 && cur_x >= rm) {



 *x = rm;
 wrap_inx = test_inx;
    }
    wrap_ptr = prompt + indx[wrap_inx];
    if ((hide_ptr != 0) && (hide_ptr >= wrap_ptr)) {
 hidden -= ESCAPE_LEN;
 test_ptr = wrap_ptr;
 while (test_ptr < wrap_ptr) {
     if (dialog_vars.colors && isOurEscape(test_ptr)) {
  hidden -= ESCAPE_LEN;
  test_ptr += ESCAPE_LEN;
     } else {
  ++test_ptr;
     }
 }
    }





    if (dialog_state.text_only || win) {
 dlg_print_text(win, prompt, (cols[wrap_inx] - hidden), attr);
    }


    if (*x == 1) {
 *x = rm;
    }

    *x -= hidden;


    test_ptr = wrap_ptr;
    while (isblank(UCH(*test_ptr)))
 test_ptr++;
    if (*test_ptr == '\n')
 test_ptr++;
    dlg_finish_string(prompt);
    return (test_ptr);
}
