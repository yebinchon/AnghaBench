
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
struct ipt_entry_target {int data; TYPE_2__ u; } ;
struct ipt_entry {int dummy; } ;
struct TYPE_6__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int IPT_MATCH_ITERATE (struct ipt_entry*,int ,int *) ;
 int NFPROTO_IPV4 ;
 int cleanup_match ;
 struct ipt_entry_target* ipt_get_target (struct ipt_entry*) ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static int
cleanup_entry(struct ipt_entry *e, unsigned int *i)
{
 struct xt_tgdtor_param par;
 struct ipt_entry_target *t;

 if (i && (*i)-- == 0)
  return 1;


 IPT_MATCH_ITERATE(e, cleanup_match, ((void*)0));
 t = ipt_get_target(e);

 par.target = t->u.kernel.target;
 par.targinfo = t->data;
 par.family = NFPROTO_IPV4;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
 return 0;
}
