
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_textbox (char const*,char const*,int ,int ) ;

__attribute__((used)) static void show_helptext(const char *title, const char *text)
{
 show_textbox(title, text, 0, 0);
}
