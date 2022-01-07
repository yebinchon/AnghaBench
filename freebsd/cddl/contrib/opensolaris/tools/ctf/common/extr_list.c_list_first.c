
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* l_data; } ;
typedef TYPE_1__ list_t ;



void *
list_first(list_t *list)
{
 return (list ? list->l_data : ((void*)0));
}
