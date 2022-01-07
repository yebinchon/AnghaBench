
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {int targinfo; TYPE_1__* target; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* watcher; } ;
struct ebt_entry_watcher {TYPE_2__ u; int data; } ;
struct TYPE_3__ {int (* target ) (struct sk_buff*,struct xt_target_param*) ;} ;


 int stub1 (struct sk_buff*,struct xt_target_param*) ;

__attribute__((used)) static inline int
ebt_do_watcher(const struct ebt_entry_watcher *w, struct sk_buff *skb,
        struct xt_target_param *par)
{
 par->target = w->u.watcher;
 par->targinfo = w->data;
 w->u.watcher->target(skb, par);

 return 0;
}
