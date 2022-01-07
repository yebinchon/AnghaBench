
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {int fro_net; } ;


 int rt_cache_flush (int ,int) ;

__attribute__((used)) static void fib4_rule_flush_cache(struct fib_rules_ops *ops)
{
 rt_cache_flush(ops->fro_net, -1);
}
