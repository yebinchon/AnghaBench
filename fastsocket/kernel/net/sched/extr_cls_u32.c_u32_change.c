
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tcf_proto {struct tc_u_hnode* root; struct tc_u_common* data; int prio; } ;
struct TYPE_2__ {scalar_t__ success; } ;
struct tc_u_knode {int handle; struct tc_u_knode* pf; struct tc_u_knode* next; TYPE_1__ mark; scalar_t__ fshift; struct tc_u_hnode* ht_up; TYPE_1__ sel; } ;
struct tc_u_hnode {int refcnt; unsigned int divisor; int handle; struct tc_u_knode** ht; struct tc_u_hnode* next; int prio; struct tc_u_common* tp_c; } ;
struct tc_u_common {struct tc_u_hnode* hlist; } ;
struct tc_u32_sel {int nkeys; scalar_t__ hmask; } ;
struct tc_u32_pcnt {int dummy; } ;
struct tc_u32_mark {int nkeys; scalar_t__ hmask; } ;
struct tc_u32_key {int dummy; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 size_t TCA_U32_DIVISOR ;
 size_t TCA_U32_HASH ;
 size_t TCA_U32_MARK ;
 int TCA_U32_MAX ;
 size_t TCA_U32_SEL ;
 size_t TC_U32_HASH (int) ;
 scalar_t__ TC_U32_HTID (int) ;
 scalar_t__ TC_U32_KEY (int) ;
 int TC_U32_NODE (int) ;
 scalar_t__ TC_U32_ROOT ;
 scalar_t__ ffs (int ) ;
 int gen_new_htid (struct tc_u_common*) ;
 int gen_new_kid (struct tc_u_hnode*,int) ;
 int kfree (struct tc_u_knode*) ;
 void* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct tc_u32_sel*,int) ;
 struct tc_u32_sel* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int ntohl (scalar_t__) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;
 struct tc_u_hnode* u32_lookup_ht (struct tc_u_common*,scalar_t__) ;
 int u32_policy ;
 int u32_set_parms (struct tcf_proto*,unsigned long,struct tc_u_hnode*,struct tc_u_knode*,struct nlattr**,struct nlattr*) ;

__attribute__((used)) static int u32_change(struct tcf_proto *tp, unsigned long base, u32 handle,
        struct nlattr **tca,
        unsigned long *arg)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_hnode *ht;
 struct tc_u_knode *n;
 struct tc_u32_sel *s;
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_U32_MAX + 1];
 u32 htid;
 int err;

 if (opt == ((void*)0))
  return handle ? -EINVAL : 0;

 err = nla_parse_nested(tb, TCA_U32_MAX, opt, u32_policy);
 if (err < 0)
  return err;

 if ((n = (struct tc_u_knode*)*arg) != ((void*)0)) {
  if (TC_U32_KEY(n->handle) == 0)
   return -EINVAL;

  return u32_set_parms(tp, base, n->ht_up, n, tb, tca[TCA_RATE]);
 }

 if (tb[TCA_U32_DIVISOR]) {
  unsigned divisor = nla_get_u32(tb[TCA_U32_DIVISOR]);

  if (--divisor > 0x100)
   return -EINVAL;
  if (TC_U32_KEY(handle))
   return -EINVAL;
  if (handle == 0) {
   handle = gen_new_htid(tp->data);
   if (handle == 0)
    return -ENOMEM;
  }
  ht = kzalloc(sizeof(*ht) + divisor*sizeof(void*), GFP_KERNEL);
  if (ht == ((void*)0))
   return -ENOBUFS;
  ht->tp_c = tp_c;
  ht->refcnt = 1;
  ht->divisor = divisor;
  ht->handle = handle;
  ht->prio = tp->prio;
  ht->next = tp_c->hlist;
  tp_c->hlist = ht;
  *arg = (unsigned long)ht;
  return 0;
 }

 if (tb[TCA_U32_HASH]) {
  htid = nla_get_u32(tb[TCA_U32_HASH]);
  if (TC_U32_HTID(htid) == TC_U32_ROOT) {
   ht = tp->root;
   htid = ht->handle;
  } else {
   ht = u32_lookup_ht(tp->data, TC_U32_HTID(htid));
   if (ht == ((void*)0))
    return -EINVAL;
  }
 } else {
  ht = tp->root;
  htid = ht->handle;
 }

 if (ht->divisor < TC_U32_HASH(htid))
  return -EINVAL;

 if (handle) {
  if (TC_U32_HTID(handle) && TC_U32_HTID(handle^htid))
   return -EINVAL;
  handle = htid | TC_U32_NODE(handle);
 } else
  handle = gen_new_kid(ht, htid);

 if (tb[TCA_U32_SEL] == ((void*)0))
  return -EINVAL;

 s = nla_data(tb[TCA_U32_SEL]);

 n = kzalloc(sizeof(*n) + s->nkeys*sizeof(struct tc_u32_key), GFP_KERNEL);
 if (n == ((void*)0))
  return -ENOBUFS;
 memcpy(&n->sel, s, sizeof(*s) + s->nkeys*sizeof(struct tc_u32_key));
 n->ht_up = ht;
 n->handle = handle;
 n->fshift = s->hmask ? ffs(ntohl(s->hmask)) - 1 : 0;
 err = u32_set_parms(tp, base, ht, n, tb, tca[TCA_RATE]);
 if (err == 0) {
  struct tc_u_knode **ins;
  for (ins = &ht->ht[TC_U32_HASH(handle)]; *ins; ins = &(*ins)->next)
   if (TC_U32_NODE(handle) < TC_U32_NODE((*ins)->handle))
    break;

  n->next = *ins;
  tcf_tree_lock(tp);
  *ins = n;
  tcf_tree_unlock(tp);

  *arg = (unsigned long)n;
  return 0;
 }



 kfree(n);
 return err;
}
