
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {unsigned int hooknum; int targinfo; TYPE_1__* target; struct net_device const* out; struct net_device const* in; int family; } ;
struct xt_match_param {int* hotdrop; unsigned int hooknum; struct net_device const* out; struct net_device const* in; int family; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct ebt_table_info {char* entries; struct ebt_entries** hook_entry; struct ebt_chainstack** chainstack; int nentries; int counters; } ;
struct ebt_table {int lock; struct ebt_table_info* private; } ;
struct ebt_standard_target {int verdict; } ;
struct TYPE_4__ {TYPE_1__* target; } ;
struct ebt_entry_target {TYPE_2__ u; int data; } ;
struct ebt_entry {int target_offset; } ;
struct ebt_entries {int nentries; int counter_offset; int policy; scalar_t__ data; scalar_t__ distinguisher; } ;
struct ebt_counter {int bcnt; int pcnt; } ;
struct ebt_chainstack {int n; struct ebt_entry* e; struct ebt_entries* chaininfo; } ;
struct TYPE_3__ {int (* target ) (struct sk_buff*,struct xt_target_param*) ;} ;


 int BUGPRINT (char*) ;
 struct ebt_counter* COUNTER_BASE (int ,int ,size_t) ;
 int EBT_ACCEPT ;
 int EBT_CONTINUE ;
 int EBT_DROP ;
 scalar_t__ EBT_MATCH_ITERATE (struct ebt_entry*,int ,struct sk_buff*,struct xt_match_param*) ;
 int EBT_RETURN ;
 int EBT_WATCHER_ITERATE (struct ebt_entry*,int ,struct sk_buff*,struct xt_target_param*) ;
 int NFPROTO_BRIDGE ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 scalar_t__ ebt_basic_match (struct ebt_entry*,int ,struct net_device const*,struct net_device const*) ;
 int ebt_do_match ;
 int ebt_do_watcher ;
 void* ebt_next_entry (struct ebt_entry*) ;
 int eth_hdr (struct sk_buff*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 size_t smp_processor_id () ;
 int stub1 (struct sk_buff*,struct xt_target_param*) ;

unsigned int ebt_do_table (unsigned int hook, struct sk_buff *skb,
   const struct net_device *in, const struct net_device *out,
   struct ebt_table *table)
{
 int i, nentries;
 struct ebt_entry *point;
 struct ebt_counter *counter_base, *cb_base;
 struct ebt_entry_target *t;
 int verdict, sp = 0;
 struct ebt_chainstack *cs;
 struct ebt_entries *chaininfo;
 char *base;
 struct ebt_table_info *private;
 bool hotdrop = 0;
 struct xt_match_param mtpar;
 struct xt_target_param tgpar;

 mtpar.family = tgpar.family = NFPROTO_BRIDGE;
 mtpar.in = tgpar.in = in;
 mtpar.out = tgpar.out = out;
 mtpar.hotdrop = &hotdrop;
 mtpar.hooknum = tgpar.hooknum = hook;

 read_lock_bh(&table->lock);
 private = table->private;
 cb_base = COUNTER_BASE(private->counters, private->nentries,
    smp_processor_id());
 if (private->chainstack)
  cs = private->chainstack[smp_processor_id()];
 else
  cs = ((void*)0);
 chaininfo = private->hook_entry[hook];
 nentries = private->hook_entry[hook]->nentries;
 point = (struct ebt_entry *)(private->hook_entry[hook]->data);
 counter_base = cb_base + private->hook_entry[hook]->counter_offset;

 base = private->entries;
 i = 0;
 while (i < nentries) {
  if (ebt_basic_match(point, eth_hdr(skb), in, out))
   goto letscontinue;

  if (EBT_MATCH_ITERATE(point, ebt_do_match, skb, &mtpar) != 0)
   goto letscontinue;
  if (hotdrop) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }


  (*(counter_base + i)).pcnt++;
  (*(counter_base + i)).bcnt += skb->len;



  EBT_WATCHER_ITERATE(point, ebt_do_watcher, skb, &tgpar);

  t = (struct ebt_entry_target *)
     (((char *)point) + point->target_offset);

  if (!t->u.target->target)
   verdict = ((struct ebt_standard_target *)t)->verdict;
  else {
   tgpar.target = t->u.target;
   tgpar.targinfo = t->data;
   verdict = t->u.target->target(skb, &tgpar);
  }
  if (verdict == EBT_ACCEPT) {
   read_unlock_bh(&table->lock);
   return NF_ACCEPT;
  }
  if (verdict == EBT_DROP) {
   read_unlock_bh(&table->lock);
   return NF_DROP;
  }
  if (verdict == EBT_RETURN) {
letsreturn:







   sp--;

   i = cs[sp].n;
   chaininfo = cs[sp].chaininfo;
   nentries = chaininfo->nentries;
   point = cs[sp].e;
   counter_base = cb_base +
      chaininfo->counter_offset;
   continue;
  }
  if (verdict == EBT_CONTINUE)
   goto letscontinue;
  cs[sp].n = i + 1;
  cs[sp].chaininfo = chaininfo;
  cs[sp].e = ebt_next_entry(point);
  i = 0;
  chaininfo = (struct ebt_entries *) (base + verdict);







  nentries = chaininfo->nentries;
  point = (struct ebt_entry *)chaininfo->data;
  counter_base = cb_base + chaininfo->counter_offset;
  sp++;
  continue;
letscontinue:
  point = ebt_next_entry(point);
  i++;
 }


 if (chaininfo->policy == EBT_RETURN)
  goto letsreturn;
 if (chaininfo->policy == EBT_ACCEPT) {
  read_unlock_bh(&table->lock);
  return NF_ACCEPT;
 }
 read_unlock_bh(&table->lock);
 return NF_DROP;
}
