
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_deviceid_node {TYPE_1__* ld; int ref; } ;
struct TYPE_2__ {int (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;


 int atomic_dec_and_test (int *) ;
 int stub1 (struct nfs4_deviceid_node*) ;

bool
nfs4_put_deviceid_node(struct nfs4_deviceid_node *d)
{
 if (!atomic_dec_and_test(&d->ref))
  return 0;
 d->ld->free_deviceid_node(d);
 return 1;
}
