
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_match_param {int matchinfo; TYPE_1__* match; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {TYPE_1__* match; } ;
struct TYPE_6__ {TYPE_2__ kernel; } ;
struct ip6t_entry_match {TYPE_3__ u; int data; } ;
struct TYPE_4__ {int (* match ) (struct sk_buff const*,struct xt_match_param*) ;} ;


 int stub1 (struct sk_buff const*,struct xt_match_param*) ;

__attribute__((used)) static inline bool
do_match(struct ip6t_entry_match *m, const struct sk_buff *skb,
  struct xt_match_param *par)
{
 par->match = m->u.kernel.match;
 par->matchinfo = m->data;


 if (!m->u.kernel.match->match(skb, par))
  return 1;
 else
  return 0;
}
