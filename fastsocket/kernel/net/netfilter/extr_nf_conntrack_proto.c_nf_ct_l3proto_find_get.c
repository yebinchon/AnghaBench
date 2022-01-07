
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nf_conntrack_l3proto {int me; } ;


 struct nf_conntrack_l3proto* __nf_ct_l3proto_find (int ) ;
 struct nf_conntrack_l3proto nf_conntrack_l3proto_generic ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

struct nf_conntrack_l3proto *
nf_ct_l3proto_find_get(u_int16_t l3proto)
{
 struct nf_conntrack_l3proto *p;

 rcu_read_lock();
 p = __nf_ct_l3proto_find(l3proto);
 if (!try_module_get(p->me))
  p = &nf_conntrack_l3proto_generic;
 rcu_read_unlock();

 return p;
}
