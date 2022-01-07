
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int genl_register_family_with_ops (int *,int ,int ) ;
 int irda_nl_family ;
 int irda_nl_ops ;

int irda_nl_register(void)
{
 return genl_register_family_with_ops(&irda_nl_family,
  irda_nl_ops, ARRAY_SIZE(irda_nl_ops));
}
