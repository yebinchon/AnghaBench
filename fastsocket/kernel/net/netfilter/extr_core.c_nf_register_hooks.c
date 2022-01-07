
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int dummy; } ;


 int nf_register_hook (struct nf_hook_ops*) ;
 int nf_unregister_hooks (struct nf_hook_ops*,unsigned int) ;

int nf_register_hooks(struct nf_hook_ops *reg, unsigned int n)
{
 unsigned int i;
 int err = 0;

 for (i = 0; i < n; i++) {
  err = nf_register_hook(&reg[i]);
  if (err)
   goto err;
 }
 return err;

err:
 if (i > 0)
  nf_unregister_hooks(reg, i);
 return err;
}
