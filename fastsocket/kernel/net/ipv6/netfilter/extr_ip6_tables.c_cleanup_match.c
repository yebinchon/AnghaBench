
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_mtdtor_param {TYPE_1__* match; int family; int matchinfo; } ;
struct TYPE_5__ {TYPE_1__* match; } ;
struct TYPE_6__ {TYPE_2__ kernel; } ;
struct ip6t_entry_match {int data; TYPE_3__ u; } ;
struct TYPE_4__ {int me; int (* destroy ) (struct xt_mtdtor_param*) ;} ;


 int NFPROTO_IPV6 ;
 int module_put (int ) ;
 int stub1 (struct xt_mtdtor_param*) ;

__attribute__((used)) static int
cleanup_match(struct ip6t_entry_match *m, unsigned int *i)
{
 struct xt_mtdtor_param par;

 if (i && (*i)-- == 0)
  return 1;

 par.match = m->u.kernel.match;
 par.matchinfo = m->data;
 par.family = NFPROTO_IPV6;
 if (par.match->destroy != ((void*)0))
  par.match->destroy(&par);
 module_put(par.match->me);
 return 0;
}
