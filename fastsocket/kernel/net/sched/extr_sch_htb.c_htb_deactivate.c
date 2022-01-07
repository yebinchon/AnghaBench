
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htb_sched {int dummy; } ;
struct TYPE_3__ {int drop_list; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct htb_class {TYPE_2__ un; scalar_t__ prio_activity; } ;


 int WARN_ON (int) ;
 int htb_deactivate_prios (struct htb_sched*,struct htb_class*) ;
 int list_del_init (int *) ;

__attribute__((used)) static inline void htb_deactivate(struct htb_sched *q, struct htb_class *cl)
{
 WARN_ON(!cl->prio_activity);

 htb_deactivate_prios(q, cl);
 cl->prio_activity = 0;
 list_del_init(&cl->un.leaf.drop_list);
}
