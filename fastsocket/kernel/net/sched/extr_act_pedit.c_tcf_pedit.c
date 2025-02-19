
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct tcf_result {int dummy; } ;
struct TYPE_6__ {int packets; int bytes; } ;
struct TYPE_5__ {int overlimits; } ;
struct TYPE_4__ {int lastuse; } ;
struct tcf_pedit {int tcf_action; int tcfp_nkeys; int tcf_lock; TYPE_3__ tcf_bstats; TYPE_2__ tcf_qstats; int tcf_index; struct tc_pedit_key* tcfp_keys; TYPE_1__ tcf_tm; } ;
struct tc_pedit_key {int off; char offmask; int at; char shift; int mask; int val; } ;
struct tc_action {struct tcf_pedit* priv; } ;
struct sk_buff {int tc_verd; int len; } ;


 int GFP_ATOMIC ;
 int SET_TC_MUNGED (int) ;
 int TC_OK2MUNGE ;
 int WARN (int,char*,int ) ;
 int jiffies ;
 int pr_info (char*,...) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 char* skb_network_header (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tcf_pedit(struct sk_buff *skb, struct tc_action *a,
       struct tcf_result *res)
{
 struct tcf_pedit *p = a->priv;
 int i, munged = 0;
 u8 *pptr;

 if (!(skb->tc_verd & TC_OK2MUNGE)) {

  if (pskb_expand_head(skb, 0, 0, GFP_ATOMIC)) {
   return p->tcf_action;
  }
 }

 pptr = skb_network_header(skb);

 spin_lock(&p->tcf_lock);

 p->tcf_tm.lastuse = jiffies;

 if (p->tcfp_nkeys > 0) {
  struct tc_pedit_key *tkey = p->tcfp_keys;

  for (i = p->tcfp_nkeys; i > 0; i--, tkey++) {
   u32 *ptr;
   int offset = tkey->off;

   if (tkey->offmask) {
    if (skb->len > tkey->at) {
      char *j = pptr + tkey->at;
      offset += ((*j & tkey->offmask) >>
         tkey->shift);
    } else {
     goto bad;
    }
   }

   if (offset % 4) {
    pr_info("tc filter pedit"
     " offset must be on 32 bit boundaries\n");
    goto bad;
   }
   if (offset > 0 && offset > skb->len) {
    pr_info("tc filter pedit"
     " offset %d cant exceed pkt length %d\n",
           offset, skb->len);
    goto bad;
   }

   ptr = (u32 *)(pptr+offset);

   *ptr = ((*ptr & tkey->mask) ^ tkey->val);
   munged++;
  }

  if (munged)
   skb->tc_verd = SET_TC_MUNGED(skb->tc_verd);
  goto done;
 } else
  WARN(1, "pedit BUG: index %d\n", p->tcf_index);

bad:
 p->tcf_qstats.overlimits++;
done:
 p->tcf_bstats.bytes += qdisc_pkt_len(skb);
 p->tcf_bstats.packets++;
 spin_unlock(&p->tcf_lock);
 return p->tcf_action;
}
