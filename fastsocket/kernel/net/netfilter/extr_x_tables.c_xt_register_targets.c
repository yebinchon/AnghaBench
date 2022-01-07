
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target {int dummy; } ;


 int xt_register_target (struct xt_target*) ;
 int xt_unregister_targets (struct xt_target*,unsigned int) ;

int
xt_register_targets(struct xt_target *target, unsigned int n)
{
 unsigned int i;
 int err = 0;

 for (i = 0; i < n; i++) {
  err = xt_register_target(&target[i]);
  if (err)
   goto err;
 }
 return err;

err:
 if (i > 0)
  xt_unregister_targets(target, i);
 return err;
}
