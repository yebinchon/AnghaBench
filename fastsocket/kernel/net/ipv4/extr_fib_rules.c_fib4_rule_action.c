
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int dummy; } ;
struct fib_table {int (* tb_lookup ) (struct fib_table*,struct flowi*,struct fib_result*) ;} ;
struct fib_rule {int action; int table; int fr_net; } ;
struct fib_result {int dummy; } ;
struct fib_lookup_arg {scalar_t__ result; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENETUNREACH ;




 struct fib_table* fib_get_table (int ,int ) ;
 int stub1 (struct fib_table*,struct flowi*,struct fib_result*) ;

__attribute__((used)) static int fib4_rule_action(struct fib_rule *rule, struct flowi *flp,
       int flags, struct fib_lookup_arg *arg)
{
 int err = -EAGAIN;
 struct fib_table *tbl;

 switch (rule->action) {
 case 129:
  break;

 case 128:
  err = -ENETUNREACH;
  goto errout;

 case 130:
  err = -EACCES;
  goto errout;

 case 131:
 default:
  err = -EINVAL;
  goto errout;
 }

 if ((tbl = fib_get_table(rule->fr_net, rule->table)) == ((void*)0))
  goto errout;

 err = tbl->tb_lookup(tbl, flp, (struct fib_result *) arg->result);
 if (err > 0)
  err = -EAGAIN;
errout:
 return err;
}
