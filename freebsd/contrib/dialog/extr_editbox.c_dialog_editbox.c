
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_editbox (char const*,char***,int*,int,int) ;
 int free_list (char***,int*) ;
 int load_list (char const*,char***,int*) ;

int
dialog_editbox(const char *title, const char *file, int height, int width)
{
    int result;
    char **list;
    int rows;

    load_list(file, &list, &rows);
    result = dlg_editbox(title, &list, &rows, height, width);
    free_list(&list, &rows);
    return result;
}
