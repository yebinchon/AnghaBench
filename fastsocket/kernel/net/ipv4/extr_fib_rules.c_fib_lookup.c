
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rules_ops; } ;
struct net {TYPE_1__ ipv4; } ;
struct flowi {int dummy; } ;
struct fib_result {int r; } ;
struct fib_lookup_arg {int rule; struct fib_result* result; } ;


 int fib_rules_lookup (int ,struct flowi*,int ,struct fib_lookup_arg*) ;

int fib_lookup(struct net *net, struct flowi *flp, struct fib_result *res)
{
 struct fib_lookup_arg arg = {
  .result = res,
 };
 int err;

 err = fib_rules_lookup(net->ipv4.rules_ops, flp, 0, &arg);
 res->r = arg.rule;

 return err;
}
