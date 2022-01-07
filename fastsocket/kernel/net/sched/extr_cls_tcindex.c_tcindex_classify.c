
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int classid; scalar_t__ class; } ;
struct tcindex_filter_result {int exts; struct tcf_result res; } ;
struct tcindex_data {int mask; int shift; int fall_through; } ;
struct tcf_proto {TYPE_1__* q; } ;
struct sk_buff {int tc_index; } ;
struct TYPE_2__ {int handle; } ;


 struct tcindex_data* PRIV (struct tcf_proto*) ;
 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int) ;
 int pr_debug (char*,struct sk_buff*,...) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 struct tcindex_filter_result* tcindex_lookup (struct tcindex_data*,int) ;

__attribute__((used)) static int tcindex_classify(struct sk_buff *skb, struct tcf_proto *tp,
       struct tcf_result *res)
{
 struct tcindex_data *p = PRIV(tp);
 struct tcindex_filter_result *f;
 int key = (skb->tc_index & p->mask) >> p->shift;

 pr_debug("tcindex_classify(skb %p,tp %p,res %p),p %p\n",
   skb, tp, res, p);

 f = tcindex_lookup(p, key);
 if (!f) {
  if (!p->fall_through)
   return -1;
  res->classid = TC_H_MAKE(TC_H_MAJ(tp->q->handle), key);
  res->class = 0;
  pr_debug("alg 0x%x\n", res->classid);
  return 0;
 }
 *res = f->res;
 pr_debug("map 0x%x\n", res->classid);

 return tcf_exts_exec(skb, &f->exts, res);
}
