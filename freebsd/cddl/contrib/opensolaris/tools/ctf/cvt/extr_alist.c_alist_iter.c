
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int al_elements; } ;
typedef TYPE_1__ alist_t ;
struct TYPE_6__ {int (* aid_func ) (void*,void*,void*) ;void* aid_priv; } ;
typedef TYPE_2__ alist_iter_data_t ;


 int alist_iter_cb ;
 int hash_iter (int ,int ,TYPE_2__*) ;

int
alist_iter(alist_t *alist, int (*func)(void *, void *, void *), void *private)
{
 alist_iter_data_t aid;

 aid.aid_func = func;
 aid.aid_priv = private;

 return (hash_iter(alist->al_elements, alist_iter_cb, &aid));
}
