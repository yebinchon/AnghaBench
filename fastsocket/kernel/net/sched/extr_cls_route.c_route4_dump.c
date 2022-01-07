
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int classid; } ;
struct route4_filter {int handle; int id; int iif; int exts; TYPE_1__ res; } ;
struct nlattr {int dummy; } ;


 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int TCA_OPTIONS ;
 int TCA_ROUTE4_CLASSID ;
 int TCA_ROUTE4_FROM ;
 int TCA_ROUTE4_IIF ;
 int TCA_ROUTE4_TO ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int route_ext_map ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *,int *) ;

__attribute__((used)) static int route4_dump(struct tcf_proto *tp, unsigned long fh,
         struct sk_buff *skb, struct tcmsg *t)
{
 struct route4_filter *f = (struct route4_filter*)fh;
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nest;
 u32 id;

 if (f == ((void*)0))
  return skb->len;

 t->tcm_handle = f->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (!(f->handle&0x8000)) {
  id = f->id&0xFF;
  NLA_PUT_U32(skb, TCA_ROUTE4_TO, id);
 }
 if (f->handle&0x80000000) {
  if ((f->handle>>16) != 0xFFFF)
   NLA_PUT_U32(skb, TCA_ROUTE4_IIF, f->iif);
 } else {
  id = f->id>>16;
  NLA_PUT_U32(skb, TCA_ROUTE4_FROM, id);
 }
 if (f->res.classid)
  NLA_PUT_U32(skb, TCA_ROUTE4_CLASSID, f->res.classid);

 if (tcf_exts_dump(skb, &f->exts, &route_ext_map) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &f->exts, &route_ext_map) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
