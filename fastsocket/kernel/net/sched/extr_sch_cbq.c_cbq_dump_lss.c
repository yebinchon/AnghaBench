
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tc_cbq_lssopt {int change; int offtime; scalar_t__ minidle; int maxidle; int avpkt; int level; int ewma_log; int flags; } ;
struct sk_buff {int len; } ;
struct cbq_class {int offtime; scalar_t__ minidle; int maxidle; int avpkt; int level; int ewma_log; int * share; int * borrow; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_cbq_lssopt*) ;
 int TCA_CBQ_LSSOPT ;
 int TCF_CBQ_LSS_BOUNDED ;
 int TCF_CBQ_LSS_ISOLATED ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static __inline__ int cbq_dump_lss(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_cbq_lssopt opt;

 opt.flags = 0;
 if (cl->borrow == ((void*)0))
  opt.flags |= TCF_CBQ_LSS_BOUNDED;
 if (cl->share == ((void*)0))
  opt.flags |= TCF_CBQ_LSS_ISOLATED;
 opt.ewma_log = cl->ewma_log;
 opt.level = cl->level;
 opt.avpkt = cl->avpkt;
 opt.maxidle = cl->maxidle;
 opt.minidle = (u32)(-cl->minidle);
 opt.offtime = cl->offtime;
 opt.change = ~0;
 NLA_PUT(skb, TCA_CBQ_LSSOPT, sizeof(opt), &opt);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
