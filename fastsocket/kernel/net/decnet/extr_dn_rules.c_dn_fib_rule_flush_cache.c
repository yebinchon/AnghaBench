
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {int dummy; } ;


 int dn_rt_cache_flush (int) ;

__attribute__((used)) static void dn_fib_rule_flush_cache(struct fib_rules_ops *ops)
{
 dn_rt_cache_flush(-1);
}
