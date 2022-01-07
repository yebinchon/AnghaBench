
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* al_valfree ) (int ) ;int (* al_namefree ) (int ) ;} ;
typedef TYPE_1__ alist_t ;
struct TYPE_5__ {int ale_name; } ;
typedef TYPE_2__ alist_el_t ;


 int free (TYPE_2__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
alist_free_cb(void *arg1, void *arg2)
{
 alist_el_t *el = arg1;
 alist_t *alist = arg2;
 if (alist->al_namefree)
  alist->al_namefree(el->ale_name);
 if (alist->al_valfree)
  alist->al_valfree(el->ale_name);
 free(el);
}
