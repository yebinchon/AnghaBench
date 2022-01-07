
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ no_items; scalar_t__ no_tags; } ;
struct TYPE_4__ {int name; int text; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;


 TYPE_3__ dialog_vars ;
 int dlg_count_columns (int ) ;

int
dlg_calc_list_width(int item_no, DIALOG_LISTITEM * items)
{
    int n, i, len1 = 0, len2 = 0;
    int bits = ((dialog_vars.no_tags ? 1 : 0)
  + (dialog_vars.no_items ? 2 : 0));

    for (i = 0; i < item_no; ++i) {
 switch (bits) {
 case 0:

 case 1:
     if ((n = dlg_count_columns(items[i].name)) > len1)
  len1 = n;
     if ((n = dlg_count_columns(items[i].text)) > len2)
  len2 = n;
     break;
 case 2:

 case 3:
     if ((n = dlg_count_columns(items[i].name)) > len1)
  len1 = n;
     break;
 }
    }
    return len1 + len2;
}
