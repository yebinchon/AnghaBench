
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui__question_window (int *,char const*,char*,int ) ;

int ui__dialog_yesno(const char *msg)
{
 return ui__question_window(((void*)0), msg, "Enter: Yes, ESC: No", 0);
}
