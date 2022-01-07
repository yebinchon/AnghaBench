
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_nat_protocol {int me; } ;


 int module_put (int ) ;

void
nf_nat_proto_put(const struct nf_nat_protocol *p)
{
 module_put(p->me);
}
