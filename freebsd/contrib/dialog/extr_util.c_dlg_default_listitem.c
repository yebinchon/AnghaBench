
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ default_item; } ;
struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;


 TYPE_3__ dialog_vars ;
 int strcmp (scalar_t__,scalar_t__) ;

int
dlg_default_listitem(DIALOG_LISTITEM * items)
{
    int result = 0;

    if (dialog_vars.default_item != 0) {
 int count = 0;
 while (items->name != 0) {
     if (!strcmp(dialog_vars.default_item, items->name)) {
  result = count;
  break;
     }
     ++items;
     count++;
 }
    }
    return result;
}
