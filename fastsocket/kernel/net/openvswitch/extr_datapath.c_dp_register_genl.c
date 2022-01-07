
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family_and_ops {scalar_t__ group; int family; int n_ops; int ops; } ;


 int ARRAY_SIZE (struct genl_family_and_ops*) ;
 struct genl_family_and_ops* dp_genl_families ;
 int dp_unregister_genl (int) ;
 int genl_register_family_with_ops (int ,int ,int ) ;
 int genl_register_mc_group (int ,scalar_t__) ;

__attribute__((used)) static int dp_register_genl(void)
{
 int n_registered;
 int err;
 int i;

 n_registered = 0;
 for (i = 0; i < ARRAY_SIZE(dp_genl_families); i++) {
  const struct genl_family_and_ops *f = &dp_genl_families[i];

  err = genl_register_family_with_ops(f->family, f->ops,
          f->n_ops);
  if (err)
   goto error;
  n_registered++;

  if (f->group) {
   err = genl_register_mc_group(f->family, f->group);
   if (err)
    goto error;
  }
 }

 return 0;

error:
 dp_unregister_genl(n_registered);
 return err;
}
