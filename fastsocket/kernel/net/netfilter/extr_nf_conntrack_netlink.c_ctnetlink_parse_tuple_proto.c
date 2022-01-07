
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_4__ {int protonum; } ;
struct TYPE_3__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_l4proto {int (* nlattr_to_tuple ) (struct nlattr**,struct nf_conntrack_tuple*) ;int nla_policy; } ;


 int CTA_PROTO_MAX ;
 size_t CTA_PROTO_NUM ;
 int EINVAL ;
 struct nf_conntrack_l4proto* __nf_ct_l4proto_find (int ,int ) ;
 scalar_t__ likely (int (*) (struct nlattr**,struct nf_conntrack_tuple*)) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int nla_validate_nested (struct nlattr*,int ,int ) ;
 int proto_nla_policy ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nlattr**,struct nf_conntrack_tuple*) ;

__attribute__((used)) static inline int
ctnetlink_parse_tuple_proto(struct nlattr *attr,
       struct nf_conntrack_tuple *tuple)
{
 struct nlattr *tb[CTA_PROTO_MAX+1];
 struct nf_conntrack_l4proto *l4proto;
 int ret = 0;

 ret = nla_parse_nested(tb, CTA_PROTO_MAX, attr, proto_nla_policy);
 if (ret < 0)
  return ret;

 if (!tb[CTA_PROTO_NUM])
  return -EINVAL;
 tuple->dst.protonum = nla_get_u8(tb[CTA_PROTO_NUM]);

 rcu_read_lock();
 l4proto = __nf_ct_l4proto_find(tuple->src.l3num, tuple->dst.protonum);

 if (likely(l4proto->nlattr_to_tuple)) {
  ret = nla_validate_nested(attr, CTA_PROTO_MAX,
       l4proto->nla_policy);
  if (ret == 0)
   ret = l4proto->nlattr_to_tuple(tb, tuple);
 }

 rcu_read_unlock();

 return ret;
}
