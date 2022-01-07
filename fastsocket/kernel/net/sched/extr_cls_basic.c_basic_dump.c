
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct basic_filter {int ematches; int exts; TYPE_1__ res; int handle; } ;


 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int TCA_BASIC_CLASSID ;
 int TCA_BASIC_EMATCHES ;
 int TCA_OPTIONS ;
 int basic_ext_map ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ tcf_em_tree_dump (struct sk_buff*,int *,int ) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *,int *) ;

__attribute__((used)) static int basic_dump(struct tcf_proto *tp, unsigned long fh,
        struct sk_buff *skb, struct tcmsg *t)
{
 struct basic_filter *f = (struct basic_filter *) fh;
 struct nlattr *nest;

 if (f == ((void*)0))
  return skb->len;

 t->tcm_handle = f->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (f->res.classid)
  NLA_PUT_U32(skb, TCA_BASIC_CLASSID, f->res.classid);

 if (tcf_exts_dump(skb, &f->exts, &basic_ext_map) < 0 ||
     tcf_em_tree_dump(skb, &f->ematches, TCA_BASIC_EMATCHES) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);
 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
