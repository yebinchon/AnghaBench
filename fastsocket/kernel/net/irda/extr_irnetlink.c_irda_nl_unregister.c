
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_unregister_family (int *) ;
 int irda_nl_family ;

void irda_nl_unregister(void)
{
 genl_unregister_family(&irda_nl_family);
}
