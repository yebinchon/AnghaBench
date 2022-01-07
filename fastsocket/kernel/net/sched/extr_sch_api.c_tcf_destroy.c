
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; int (* destroy ) (struct tcf_proto*) ;} ;


 int kfree (struct tcf_proto*) ;
 int module_put (int ) ;
 int stub1 (struct tcf_proto*) ;

void tcf_destroy(struct tcf_proto *tp)
{
 tp->ops->destroy(tp);
 module_put(tp->ops->owner);
 kfree(tp);
}
