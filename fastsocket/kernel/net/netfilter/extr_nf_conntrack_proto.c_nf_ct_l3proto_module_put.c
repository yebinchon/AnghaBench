
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l3proto {int me; } ;


 struct nf_conntrack_l3proto* __nf_ct_l3proto_find (unsigned short) ;
 int module_put (int ) ;

void nf_ct_l3proto_module_put(unsigned short l3proto)
{
 struct nf_conntrack_l3proto *p;


 p = __nf_ct_l3proto_find(l3proto);
 module_put(p->me);
}
