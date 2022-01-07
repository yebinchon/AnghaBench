
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int dir; } ;
struct TYPE_3__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
typedef enum ctattr_tuple { ____Placeholder_ctattr_tuple } ctattr_tuple ;


 size_t CTA_TUPLE_IP ;
 int CTA_TUPLE_MAX ;
 size_t CTA_TUPLE_PROTO ;
 int CTA_TUPLE_REPLY ;
 int EINVAL ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 int ctnetlink_parse_tuple_ip (struct nlattr*,struct nf_conntrack_tuple*) ;
 int ctnetlink_parse_tuple_proto (struct nlattr*,struct nf_conntrack_tuple*) ;
 int memset (struct nf_conntrack_tuple*,int ,int) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr const* const,int *) ;

__attribute__((used)) static int
ctnetlink_parse_tuple(const struct nlattr * const cda[],
        struct nf_conntrack_tuple *tuple,
        enum ctattr_tuple type, u_int8_t l3num)
{
 struct nlattr *tb[CTA_TUPLE_MAX+1];
 int err;

 memset(tuple, 0, sizeof(*tuple));

 nla_parse_nested(tb, CTA_TUPLE_MAX, cda[type], ((void*)0));

 if (!tb[CTA_TUPLE_IP])
  return -EINVAL;

 tuple->src.l3num = l3num;

 err = ctnetlink_parse_tuple_ip(tb[CTA_TUPLE_IP], tuple);
 if (err < 0)
  return err;

 if (!tb[CTA_TUPLE_PROTO])
  return -EINVAL;

 err = ctnetlink_parse_tuple_proto(tb[CTA_TUPLE_PROTO], tuple);
 if (err < 0)
  return err;


 if (type == CTA_TUPLE_REPLY)
  tuple->dst.dir = IP_CT_DIR_REPLY;
 else
  tuple->dst.dir = IP_CT_DIR_ORIGINAL;

 return 0;
}
