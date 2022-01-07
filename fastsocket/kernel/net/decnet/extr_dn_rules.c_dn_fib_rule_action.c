
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int dummy; } ;
struct fib_rule {int action; int table; } ;
struct fib_lookup_arg {scalar_t__ result; } ;
struct dn_fib_table {int (* lookup ) (struct dn_fib_table*,struct flowi*,struct dn_fib_res*) ;} ;
struct dn_fib_res {int dummy; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENETUNREACH ;




 struct dn_fib_table* dn_fib_get_table (int ,int ) ;
 int stub1 (struct dn_fib_table*,struct flowi*,struct dn_fib_res*) ;

__attribute__((used)) static int dn_fib_rule_action(struct fib_rule *rule, struct flowi *flp,
         int flags, struct fib_lookup_arg *arg)
{
 int err = -EAGAIN;
 struct dn_fib_table *tbl;

 switch(rule->action) {
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

 tbl = dn_fib_get_table(rule->table, 0);
 if (tbl == ((void*)0))
  goto errout;

 err = tbl->lookup(tbl, flp, (struct dn_fib_res *)arg->result);
 if (err > 0)
  err = -EAGAIN;
errout:
 return err;
}
