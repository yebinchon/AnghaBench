
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
dlg_strempty(void)
{
    static char empty[] = "";
    return empty;
}
