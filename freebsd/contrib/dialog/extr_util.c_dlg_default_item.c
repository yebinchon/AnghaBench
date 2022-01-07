
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ default_item; } ;


 TYPE_1__ dialog_vars ;
 int strcmp (scalar_t__,char*) ;

int
dlg_default_item(char **items, int llen)
{
    int result = 0;

    if (dialog_vars.default_item != 0) {
 int count = 0;
 while (*items != 0) {
     if (!strcmp(dialog_vars.default_item, *items)) {
  result = count;
  break;
     }
     items += llen;
     count++;
 }
    }
    return result;
}
