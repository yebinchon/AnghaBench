
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct neighbour {int nud_state; int probes; int lock; int refcnt; scalar_t__ updated; scalar_t__ confirmed; scalar_t__ used; int ha; TYPE_3__* dev; struct nda_cacheinfo* primary_key; TYPE_2__* tbl; int type; int flags; TYPE_1__* ops; } ;
struct ndmsg {int ndm_state; int ndm_ifindex; int ndm_type; int ndm_flags; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int ndm_family; } ;
struct nda_cacheinfo {scalar_t__ ndm_refcnt; void* ndm_updated; void* ndm_confirmed; void* ndm_used; } ;
typedef int ci ;
struct TYPE_6__ {int addr_len; int ifindex; } ;
struct TYPE_5__ {int key_len; } ;
struct TYPE_4__ {int family; } ;


 int EMSGSIZE ;
 int NDA_CACHEINFO ;
 int NDA_DST ;
 int NDA_LLADDR ;
 int NDA_PROBES ;
 int NLA_PUT (struct sk_buff*,int ,int,struct nda_cacheinfo*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int NUD_VALID ;
 scalar_t__ atomic_read (int *) ;
 unsigned long jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int neigh_fill_info(struct sk_buff *skb, struct neighbour *neigh,
      u32 pid, u32 seq, int type, unsigned int flags)
{
 unsigned long now = jiffies;
 struct nda_cacheinfo ci;
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*ndm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 ndm->ndm_family = neigh->ops->family;
 ndm->ndm_pad1 = 0;
 ndm->ndm_pad2 = 0;
 ndm->ndm_flags = neigh->flags;
 ndm->ndm_type = neigh->type;
 ndm->ndm_ifindex = neigh->dev->ifindex;

 NLA_PUT(skb, NDA_DST, neigh->tbl->key_len, neigh->primary_key);

 read_lock_bh(&neigh->lock);
 ndm->ndm_state = neigh->nud_state;
 if ((neigh->nud_state & NUD_VALID) &&
     nla_put(skb, NDA_LLADDR, neigh->dev->addr_len, neigh->ha) < 0) {
  read_unlock_bh(&neigh->lock);
  goto nla_put_failure;
 }

 ci.ndm_used = jiffies_to_clock_t(now - neigh->used);
 ci.ndm_confirmed = jiffies_to_clock_t(now - neigh->confirmed);
 ci.ndm_updated = jiffies_to_clock_t(now - neigh->updated);
 ci.ndm_refcnt = atomic_read(&neigh->refcnt) - 1;
 read_unlock_bh(&neigh->lock);

 NLA_PUT_U32(skb, NDA_PROBES, atomic_read(&neigh->probes));
 NLA_PUT(skb, NDA_CACHEINFO, sizeof(ci), &ci);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
