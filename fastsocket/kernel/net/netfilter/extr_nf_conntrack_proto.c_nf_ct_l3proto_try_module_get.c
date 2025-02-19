
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l3proto {int dummy; } ;


 int EPROTOTYPE ;
 struct nf_conntrack_l3proto nf_conntrack_l3proto_generic ;
 struct nf_conntrack_l3proto* nf_ct_l3proto_find_get (unsigned short) ;
 int request_module (char*,unsigned short) ;

int
nf_ct_l3proto_try_module_get(unsigned short l3proto)
{
 int ret;
 struct nf_conntrack_l3proto *p;

retry: p = nf_ct_l3proto_find_get(l3proto);
 if (p == &nf_conntrack_l3proto_generic) {
  ret = request_module("nf_conntrack-%d", l3proto);
  if (!ret)
   goto retry;

  return -EPROTOTYPE;
 }

 return 0;
}
