
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sl_num; unsigned int sl_max; TYPE_2__* sl_items; } ;
typedef TYPE_1__ strlist_t ;
struct TYPE_7__ {char* si_str; unsigned int si_info; } ;
typedef TYPE_2__ strlist_item_t ;


 TYPE_2__* bmake_realloc (TYPE_2__*,unsigned int) ;

void
strlist_add_str(strlist_t *sl, char *str, unsigned int info)
{
 unsigned int n;
 strlist_item_t *items;

 if (str == ((void*)0))
     return;

 n = sl->sl_num + 1;
 sl->sl_num = n;
 items = sl->sl_items;
 if (n >= sl->sl_max) {
     items = bmake_realloc(items, (n + 7) * sizeof *sl->sl_items);
     sl->sl_items = items;
     sl->sl_max = n + 6;
 }
 items += n - 1;
 items->si_str = str;
 items->si_info = info;
 items[1].si_str = ((void*)0);
}
