
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int justify_text (int *,char const*,int,int,int*,int*) ;

void
dlg_print_autowrap(WINDOW *win, const char *prompt, int height, int width)
{
    justify_text(win, prompt,
   height,
   width,
   (int *) 0, (int *) 0);
}
