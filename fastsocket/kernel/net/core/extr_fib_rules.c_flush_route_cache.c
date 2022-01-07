
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {int (* flush_cache ) (struct fib_rules_ops*) ;} ;


 int stub1 (struct fib_rules_ops*) ;

__attribute__((used)) static void flush_route_cache(struct fib_rules_ops *ops)
{
 if (ops->flush_cache)
  ops->flush_cache(ops);
}
