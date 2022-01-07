
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {scalar_t__ family; int lock; void* gc_interval; void* gc_thresh3; void* gc_thresh2; void* gc_thresh1; int id; struct neigh_table* next; } ;
struct neigh_parms {void* locktime; void* proxy_delay; void* anycast_delay; void* retrans_time; void* delay_probe_time; void* gc_staletime; void* base_reachable_time; void* mcast_probes; void* ucast_probes; void* app_probes; void* proxy_qlen; void* queue_len; } ;
struct ndtmsg {scalar_t__ ndtm_family; } ;


 int EINVAL ;
 int ENOENT ;
 size_t NDTA_GC_INTERVAL ;
 int NDTA_MAX ;
 size_t NDTA_NAME ;
 size_t NDTA_PARMS ;
 size_t NDTA_THRESH1 ;
 size_t NDTA_THRESH2 ;
 size_t NDTA_THRESH3 ;





 size_t NDTPA_IFINDEX ;

 int NDTPA_MAX ;






 struct neigh_parms* lookup_neigh_parms (struct neigh_table*,struct net*,int) ;
 struct neigh_table* neigh_tables ;
 int neigh_tbl_lock ;
 int nl_neightbl_policy ;
 int nl_ntbl_parm_policy ;
 void* nla_get_msecs (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct ndtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct net* sock_net (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int neightbl_set(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct neigh_table *tbl;
 struct ndtmsg *ndtmsg;
 struct nlattr *tb[NDTA_MAX+1];
 int err;

 err = nlmsg_parse(nlh, sizeof(*ndtmsg), tb, NDTA_MAX,
     nl_neightbl_policy);
 if (err < 0)
  goto errout;

 if (tb[NDTA_NAME] == ((void*)0)) {
  err = -EINVAL;
  goto errout;
 }

 ndtmsg = nlmsg_data(nlh);
 read_lock(&neigh_tbl_lock);
 for (tbl = neigh_tables; tbl; tbl = tbl->next) {
  if (ndtmsg->ndtm_family && tbl->family != ndtmsg->ndtm_family)
   continue;

  if (nla_strcmp(tb[NDTA_NAME], tbl->id) == 0)
   break;
 }

 if (tbl == ((void*)0)) {
  err = -ENOENT;
  goto errout_locked;
 }





 write_lock_bh(&tbl->lock);

 if (tb[NDTA_PARMS]) {
  struct nlattr *tbp[NDTPA_MAX+1];
  struct neigh_parms *p;
  int i, ifindex = 0;

  err = nla_parse_nested(tbp, NDTPA_MAX, tb[NDTA_PARMS],
           nl_ntbl_parm_policy);
  if (err < 0)
   goto errout_tbl_lock;

  if (tbp[NDTPA_IFINDEX])
   ifindex = nla_get_u32(tbp[NDTPA_IFINDEX]);

  p = lookup_neigh_parms(tbl, net, ifindex);
  if (p == ((void*)0)) {
   err = -ENOENT;
   goto errout_tbl_lock;
  }

  for (i = 1; i <= NDTPA_MAX; i++) {
   if (tbp[i] == ((void*)0))
    continue;

   switch (i) {
   case 130:
    p->queue_len = nla_get_u32(tbp[i]);
    break;
   case 131:
    p->proxy_qlen = nla_get_u32(tbp[i]);
    break;
   case 138:
    p->app_probes = nla_get_u32(tbp[i]);
    break;
   case 128:
    p->ucast_probes = nla_get_u32(tbp[i]);
    break;
   case 133:
    p->mcast_probes = nla_get_u32(tbp[i]);
    break;
   case 137:
    p->base_reachable_time = nla_get_msecs(tbp[i]);
    break;
   case 135:
    p->gc_staletime = nla_get_msecs(tbp[i]);
    break;
   case 136:
    p->delay_probe_time = nla_get_msecs(tbp[i]);
    break;
   case 129:
    p->retrans_time = nla_get_msecs(tbp[i]);
    break;
   case 139:
    p->anycast_delay = nla_get_msecs(tbp[i]);
    break;
   case 132:
    p->proxy_delay = nla_get_msecs(tbp[i]);
    break;
   case 134:
    p->locktime = nla_get_msecs(tbp[i]);
    break;
   }
  }
 }

 if (tb[NDTA_THRESH1])
  tbl->gc_thresh1 = nla_get_u32(tb[NDTA_THRESH1]);

 if (tb[NDTA_THRESH2])
  tbl->gc_thresh2 = nla_get_u32(tb[NDTA_THRESH2]);

 if (tb[NDTA_THRESH3])
  tbl->gc_thresh3 = nla_get_u32(tb[NDTA_THRESH3]);

 if (tb[NDTA_GC_INTERVAL])
  tbl->gc_interval = nla_get_msecs(tb[NDTA_GC_INTERVAL]);

 err = 0;

errout_tbl_lock:
 write_unlock_bh(&tbl->lock);
errout_locked:
 read_unlock(&neigh_tbl_lock);
errout:
 return err;
}
