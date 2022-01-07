
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int dlg_fselect (char const*,char const*,int,int,int ) ;

int
dialog_fselect(const char *title, const char *path, int height, int width)
{
    return dlg_fselect(title, path, height, width, FALSE);
}
