
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {scalar_t__ iif; int mark; } ;
struct fib_rules_ops {int (* match ) (struct fib_rule*,struct flowi*,int) ;} ;
struct fib_rule {scalar_t__ ifindex; int mark; int mark_mask; int flags; } ;


 int FIB_RULE_INVERT ;
 int stub1 (struct fib_rule*,struct flowi*,int) ;

__attribute__((used)) static int fib_rule_match(struct fib_rule *rule, struct fib_rules_ops *ops,
     struct flowi *fl, int flags)
{
 int ret = 0;

 if (rule->ifindex && (rule->ifindex != fl->iif))
  goto out;

 if ((rule->mark ^ fl->mark) & rule->mark_mask)
  goto out;

 ret = ops->match(rule, fl, flags);
out:
 return (rule->flags & FIB_RULE_INVERT) ? !ret : ret;
}
