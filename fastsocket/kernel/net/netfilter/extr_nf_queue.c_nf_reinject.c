
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_queue_entry {size_t pf; size_t hook; int (* okfn ) (struct sk_buff*) ;int outdev; int indev; TYPE_1__* elem; struct sk_buff* skb; } ;
struct nf_afinfo {scalar_t__ (* reroute ) (struct sk_buff*,struct nf_queue_entry*) ;} ;
struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {struct list_head list; } ;


 int ECANCELED ;
 int ESRCH ;
 int INT_MIN ;

 unsigned int NF_DROP ;

 unsigned int NF_REPEAT ;


 unsigned int NF_VERDICT_FLAG_QUEUE_BYPASS ;
 unsigned int NF_VERDICT_MASK ;
 unsigned int NF_VERDICT_QBITS ;
 int __nf_queue (struct sk_buff*,struct list_head*,size_t,size_t,int ,int ,int (*) (struct sk_buff*),unsigned int) ;
 int kfree (struct nf_queue_entry*) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct nf_afinfo* nf_get_afinfo (size_t) ;
 int ** nf_hooks ;
 unsigned int nf_iterate (int *,struct sk_buff*,size_t,int ,int ,struct list_head**,int (*) (struct sk_buff*),int ) ;
 int nf_queue_entry_release_refs (struct nf_queue_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ stub1 (struct sk_buff*,struct nf_queue_entry*) ;
 int stub2 (struct sk_buff*) ;

void nf_reinject(struct nf_queue_entry *entry, unsigned int verdict)
{
 struct sk_buff *skb = entry->skb;
 struct list_head *elem = &entry->elem->list;
 const struct nf_afinfo *afinfo;
 int err;

 rcu_read_lock();

 nf_queue_entry_release_refs(entry);


 if (verdict == NF_REPEAT) {
  elem = elem->prev;
  verdict = 131;
 }

 if (verdict == 131) {
  afinfo = nf_get_afinfo(entry->pf);
  if (!afinfo || afinfo->reroute(skb, entry) < 0)
   verdict = NF_DROP;
 }

 if (verdict == 131) {
 next_hook:
  verdict = nf_iterate(&nf_hooks[entry->pf][entry->hook],
         skb, entry->hook,
         entry->indev, entry->outdev, &elem,
         entry->okfn, INT_MIN);
 }

 switch (verdict & NF_VERDICT_MASK) {
 case 131:
 case 128:
  local_bh_disable();
  entry->okfn(skb);
  local_bh_enable();
 case 129:
  break;
 case 130:
  err = __nf_queue(skb, elem, entry->pf, entry->hook,
     entry->indev, entry->outdev, entry->okfn,
     verdict >> NF_VERDICT_QBITS);
  if (err < 0) {
   if (err == -ECANCELED)
    goto next_hook;
   if (err == -ESRCH &&
      (verdict & NF_VERDICT_FLAG_QUEUE_BYPASS))
    goto next_hook;
   kfree_skb(skb);
  }
  break;
 default:
  kfree_skb(skb);
 }
 rcu_read_unlock();
 kfree(entry);
 return;
}
