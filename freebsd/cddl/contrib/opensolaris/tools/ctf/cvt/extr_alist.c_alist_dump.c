
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int al_elements; } ;
typedef TYPE_1__ alist_t ;


 int alist_def_print_cb (void*,void*) ;
 int alist_dump_cb ;
 int hash_iter (int ,int ,void*) ;

int
alist_dump(alist_t *alist, int (*printer)(void *, void *))
{
 if (!printer)
  printer = alist_def_print_cb;

 return (hash_iter(alist->al_elements, alist_dump_cb, (void *)printer));
}
