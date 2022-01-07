
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {struct fib6_table* rt6i_table; } ;
struct nl_info {int dummy; } ;
struct fib6_table {int tb6_lock; int tb6_root; } ;


 int fib6_add (int *,struct rt6_info*,struct nl_info*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int __ip6_ins_rt(struct rt6_info *rt, struct nl_info *info)
{
 int err;
 struct fib6_table *table;

 table = rt->rt6i_table;
 write_lock_bh(&table->tb6_lock);
 err = fib6_add(&table->tb6_root, rt, info);
 write_unlock_bh(&table->tb6_lock);

 return err;
}
