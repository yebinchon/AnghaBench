
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int tcm_handle; } ;
struct tcf_proto {struct cls_cgroup_head* root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct cls_cgroup_head {int exts; int ematches; int handle; } ;


 int TCA_CGROUP_EMATCHES ;
 int TCA_OPTIONS ;
 int cgroup_ext_map ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ tcf_em_tree_dump (struct sk_buff*,int *,int ) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *,int *) ;

__attribute__((used)) static int cls_cgroup_dump(struct tcf_proto *tp, unsigned long fh,
      struct sk_buff *skb, struct tcmsg *t)
{
 struct cls_cgroup_head *head = tp->root;
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nest;

 t->tcm_handle = head->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (tcf_exts_dump(skb, &head->exts, &cgroup_ext_map) < 0 ||
     tcf_em_tree_dump(skb, &head->ematches, TCA_CGROUP_EMATCHES) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &head->exts, &cgroup_ext_map) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
