
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_ops {int dummy; } ;
struct genl_family {int dummy; } ;


 int genl_register_family (struct genl_family*) ;
 int genl_register_ops (struct genl_family*,struct genl_ops*) ;
 int genl_unregister_family (struct genl_family*) ;

int genl_register_family_with_ops(struct genl_family *family,
 struct genl_ops *ops, size_t n_ops)
{
 int err, i;

 err = genl_register_family(family);
 if (err)
  return err;

 for (i = 0; i < n_ops; ++i, ++ops) {
  err = genl_register_ops(family, ops);
  if (err)
   goto err_out;
 }
 return 0;
err_out:
 genl_unregister_family(family);
 return err;
}
