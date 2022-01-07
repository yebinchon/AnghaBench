
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_mtdtor_param {TYPE_2__* match; int family; int matchinfo; } ;
struct TYPE_3__ {TYPE_2__* match; } ;
struct ebt_entry_match {int data; TYPE_1__ u; } ;
struct TYPE_4__ {int me; int (* destroy ) (struct xt_mtdtor_param*) ;} ;


 int NFPROTO_BRIDGE ;
 int module_put (int ) ;
 int stub1 (struct xt_mtdtor_param*) ;

__attribute__((used)) static inline int
ebt_cleanup_match(struct ebt_entry_match *m, unsigned int *i)
{
 struct xt_mtdtor_param par;

 if (i && (*i)-- == 0)
  return 1;

 par.match = m->u.match;
 par.matchinfo = m->data;
 par.family = NFPROTO_BRIDGE;
 if (par.match->destroy != ((void*)0))
  par.match->destroy(&par);
 module_put(par.match->me);
 return 0;
}
