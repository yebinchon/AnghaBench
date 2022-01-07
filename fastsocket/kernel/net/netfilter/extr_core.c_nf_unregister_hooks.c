
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int dummy; } ;


 int nf_unregister_hook (struct nf_hook_ops*) ;

void nf_unregister_hooks(struct nf_hook_ops *reg, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; i++)
  nf_unregister_hook(&reg[i]);
}
