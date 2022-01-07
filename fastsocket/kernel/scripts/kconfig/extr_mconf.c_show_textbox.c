
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dialog_clear () ;
 int dialog_textbox (char const*,char const*,int,int) ;

__attribute__((used)) static void show_textbox(const char *title, const char *text, int r, int c)
{
 dialog_clear();
 dialog_textbox(title, text, r, c);
}
