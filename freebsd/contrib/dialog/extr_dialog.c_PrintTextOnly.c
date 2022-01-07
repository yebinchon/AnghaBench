
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int eOptions ;
struct TYPE_2__ {int text_height; int text_width; int output; int text_only; int input; } ;


 scalar_t__ COLS ;
 int FALSE ;
 int IgnoreNonScreen (char**,int) ;
 scalar_t__ LINES ;
 int MIN (int,int) ;
 int TRUE ;
 int arg_rest (char**) ;
 TYPE_1__ dialog_state ;
 int dlg_auto_size (int *,char*,int*,int*,int,int) ;
 int dlg_print_autowrap (int ,char*,int,int) ;
 int dlg_trim_string (char*) ;
 int dlg_ttysize (int ,scalar_t__*,scalar_t__*) ;
 int fileno (int ) ;
 int fprintf (int ,char*,int,int) ;
 int numeric_arg (char**,int) ;


 int optionString (char**,int*) ;
 int stdscr ;
 char* strdup (int ) ;

__attribute__((used)) static void
PrintTextOnly(char **argv, int *offset, eOptions code)
{

    char *text;
    int height = 0;
    int width = 0;
    int height2 = 0;
    int width2 = 0;
    int next = arg_rest(argv + *offset);

    if (LINES <= 0 && COLS <= 0)
 dlg_ttysize(fileno(dialog_state.input), &LINES, &COLS);

    text = strdup(optionString(argv, offset));
    IgnoreNonScreen(argv, *offset);

    if (next >= 1) {
 next = MIN(next, 3);
 height = numeric_arg(argv, *offset + 1);
 if (next >= 2)
     width = numeric_arg(argv, *offset + 2);
 *offset += next - 1;
    }

    dlg_trim_string(text);
    dlg_auto_size(((void*)0), text, &height2, &width2, height, width);

    switch (code) {
    case 129:
 dialog_state.text_only = TRUE;
 dlg_print_autowrap(stdscr, text, height2, width2);
 dialog_state.text_only = FALSE;
 break;
    case 128:
 fprintf(dialog_state.output, "%d %d\n",
  dialog_state.text_height,
  dialog_state.text_width);
 break;
    default:
 break;
    }
}
