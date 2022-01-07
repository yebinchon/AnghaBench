
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int al_elements; } ;
typedef TYPE_1__ alist_t ;


 int alist_free_cb ;
 int free (TYPE_1__*) ;
 int hash_free (int ,int ,TYPE_1__*) ;

void
alist_free(alist_t *alist)
{
 hash_free(alist->al_elements, alist_free_cb, alist);
 free(alist);
}
