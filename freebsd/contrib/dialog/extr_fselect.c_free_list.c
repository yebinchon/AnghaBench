
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* data; int mousex; int win; int par; } ;
typedef TYPE_1__ LIST ;


 int free (scalar_t__) ;
 int init_list (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
free_list(LIST * list, int reinit)
{
    int n;

    if (list->data != 0) {
 for (n = 0; list->data[n] != 0; n++)
     free(list->data[n]);
 free(list->data);
 list->data = 0;
    }
    if (reinit)
 init_list(list, list->par, list->win, list->mousex);
}
