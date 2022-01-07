
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpoa_client {int * eg_ops; int * in_ops; } ;


 int egress_ops ;
 int ingress_ops ;

void atm_mpoa_init_cache(struct mpoa_client *mpc)
{
 mpc->in_ops = &ingress_ops;
 mpc->eg_ops = &egress_ops;

 return;
}
