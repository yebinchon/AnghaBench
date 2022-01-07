
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protonum; } ;
struct TYPE_3__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;


 int __nf_ct_l3proto_find (int ) ;
 int __nf_ct_l4proto_find (int ,int ) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool nf_ct_invert_tuplepr(struct nf_conntrack_tuple *inverse,
     const struct nf_conntrack_tuple *orig)
{
 bool ret;

 rcu_read_lock();
 ret = nf_ct_invert_tuple(inverse, orig,
     __nf_ct_l3proto_find(orig->src.l3num),
     __nf_ct_l4proto_find(orig->src.l3num,
            orig->dst.protonum));
 rcu_read_unlock();
 return ret;
}
