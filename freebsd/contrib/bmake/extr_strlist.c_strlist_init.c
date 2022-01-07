
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sl_items; scalar_t__ sl_max; scalar_t__ sl_num; } ;
typedef TYPE_1__ strlist_t ;



void
strlist_init(strlist_t *sl)
{
 sl->sl_num = 0;
 sl->sl_max = 0;
 sl->sl_items = ((void*)0);
}
