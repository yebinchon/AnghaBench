
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ip6_null_entry; int fib6_rules_ops; } ;
struct net {TYPE_3__ ipv6; } ;
struct flowi {int dummy; } ;
struct fib_lookup_arg {struct dst_entry* result; scalar_t__ rule; int lookup_ptr; } ;
struct dst_entry {int dummy; } ;
typedef int pol_lookup_t ;
struct TYPE_4__ {struct dst_entry dst; } ;
struct TYPE_5__ {TYPE_1__ u; } ;


 int dst_hold (struct dst_entry*) ;
 int fib_rule_put (scalar_t__) ;
 int fib_rules_lookup (int ,struct flowi*,int,struct fib_lookup_arg*) ;

struct dst_entry *fib6_rule_lookup(struct net *net, struct flowi *fl,
       int flags, pol_lookup_t lookup)
{
 struct fib_lookup_arg arg = {
  .lookup_ptr = lookup,
 };

 fib_rules_lookup(net->ipv6.fib6_rules_ops, fl, flags, &arg);
 if (arg.rule)
  fib_rule_put(arg.rule);

 if (arg.result)
  return arg.result;

 dst_hold(&net->ipv6.ip6_null_entry->u.dst);
 return &net->ipv6.ip6_null_entry->u.dst;
}
