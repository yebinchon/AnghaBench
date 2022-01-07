
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
dlg_button_count(const char **labels)
{
    int result = 0;
    while (*labels++ != 0)
 ++result;
    return result;
}
