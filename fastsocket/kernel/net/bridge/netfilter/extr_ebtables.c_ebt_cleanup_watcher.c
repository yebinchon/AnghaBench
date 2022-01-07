
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_2__* target; int family; int targinfo; } ;
struct TYPE_3__ {TYPE_2__* watcher; } ;
struct ebt_entry_watcher {int data; TYPE_1__ u; } ;
struct TYPE_4__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int NFPROTO_BRIDGE ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static inline int
ebt_cleanup_watcher(struct ebt_entry_watcher *w, unsigned int *i)
{
 struct xt_tgdtor_param par;

 if (i && (*i)-- == 0)
  return 1;

 par.target = w->u.watcher;
 par.targinfo = w->data;
 par.family = NFPROTO_BRIDGE;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
 return 0;
}
