
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_handle; } ;
struct tcf_proto {scalar_t__ root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct fw_head {int mask; } ;
struct TYPE_2__ {int classid; } ;
struct fw_filter {int exts; int indev; TYPE_1__ res; int id; } ;


 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int TCA_FW_CLASSID ;
 int TCA_FW_INDEV ;
 int TCA_FW_MASK ;
 int TCA_OPTIONS ;
 int fw_ext_map ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *,int *) ;
 int tcf_exts_is_available (int *) ;

__attribute__((used)) static int fw_dump(struct tcf_proto *tp, unsigned long fh,
     struct sk_buff *skb, struct tcmsg *t)
{
 struct fw_head *head = (struct fw_head *)tp->root;
 struct fw_filter *f = (struct fw_filter*)fh;
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nest;

 if (f == ((void*)0))
  return skb->len;

 t->tcm_handle = f->id;

 if (!f->res.classid && !tcf_exts_is_available(&f->exts))
  return skb->len;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (f->res.classid)
  NLA_PUT_U32(skb, TCA_FW_CLASSID, f->res.classid);




 if (head->mask != 0xFFFFFFFF)
  NLA_PUT_U32(skb, TCA_FW_MASK, head->mask);

 if (tcf_exts_dump(skb, &f->exts, &fw_ext_map) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &f->exts, &fw_ext_map) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
