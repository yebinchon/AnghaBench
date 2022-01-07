
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIALOG_LISTITEM ;


 int DLG_EXIT_ERROR ;

int
dlg_dummy_menutext(DIALOG_LISTITEM * items, int current, char *newtext)
{
    (void) items;
    (void) current;
    (void) newtext;
    return DLG_EXIT_ERROR;
}
