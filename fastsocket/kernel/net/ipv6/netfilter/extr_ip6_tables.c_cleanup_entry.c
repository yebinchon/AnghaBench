
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_3__* target; int family; int targinfo; } ;
struct TYPE_4__ {TYPE_3__* target; } ;
struct TYPE_5__ {TYPE_1__ kernel; } ;
struct ip6t_entry_target {int data; TYPE_2__ u; } ;
struct ip6t_entry {int dummy; } ;
struct TYPE_6__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int IP6T_MATCH_ITERATE (struct ip6t_entry*,int ,int *) ;
 int NFPROTO_IPV6 ;
 int cleanup_match ;
 struct ip6t_entry_target* ip6t_get_target (struct ip6t_entry*) ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static int
cleanup_entry(struct ip6t_entry *e, unsigned int *i)
{
 struct xt_tgdtor_param par;
 struct ip6t_entry_target *t;

 if (i && (*i)-- == 0)
  return 1;


 IP6T_MATCH_ITERATE(e, cleanup_match, ((void*)0));
 t = ip6t_get_target(e);

 par.target = t->u.kernel.target;
 par.targinfo = t->data;
 par.family = NFPROTO_IPV6;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
 return 0;
}
