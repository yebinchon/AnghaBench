
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l3proto {int me; } ;


 int module_put (int ) ;

void nf_ct_l3proto_put(struct nf_conntrack_l3proto *p)
{
 module_put(p->me);
}
