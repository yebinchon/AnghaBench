
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; scalar_t__ tcm_handle; int tcm_ifindex; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {struct netdev_queue rx_queue; struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc {scalar_t__ handle; struct netdev_queue* dev_queue; TYPE_2__* ops; int refcnt; } ;
struct TYPE_4__ {TYPE_1__* cl_ops; int id; } ;
struct TYPE_3__ {struct netdev_queue* (* select_queue ) (struct Qdisc*,struct tcmsg*) ;} ;


 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int ELOOP ;
 int ENODEV ;
 int ENOENT ;
 struct tcmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 size_t TCA_KIND ;
 int TCA_MAX ;
 scalar_t__ TC_H_INGRESS ;
 scalar_t__ TC_H_MAJ (scalar_t__) ;
 scalar_t__ TC_H_MIN (scalar_t__) ;
 scalar_t__ TC_H_ROOT ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ check_loop (struct Qdisc*,struct Qdisc*,int ) ;
 struct net init_net ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int *) ;
 int qdisc_change (struct Qdisc*,struct nlattr**) ;
 struct Qdisc* qdisc_create (struct net_device*,struct netdev_queue*,struct Qdisc*,scalar_t__,scalar_t__,struct nlattr**,int*) ;
 int qdisc_destroy (struct Qdisc*) ;
 int qdisc_graft (struct net_device*,struct Qdisc*,struct sk_buff*,struct nlmsghdr*,scalar_t__,struct Qdisc*,int *) ;
 struct Qdisc* qdisc_leaf (struct Qdisc*,scalar_t__) ;
 struct Qdisc* qdisc_lookup (struct net_device*,scalar_t__) ;
 int qdisc_notify (struct sk_buff*,struct nlmsghdr*,scalar_t__,int *,struct Qdisc*) ;
 struct net* sock_net (int ) ;
 struct netdev_queue* stub1 (struct Qdisc*,struct tcmsg*) ;

__attribute__((used)) static int tc_modify_qdisc(struct sk_buff *skb, struct nlmsghdr *n, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct tcmsg *tcm;
 struct nlattr *tca[TCA_MAX + 1];
 struct net_device *dev;
 u32 clid;
 struct Qdisc *q, *p;
 int err;

 if (net != &init_net)
  return -EINVAL;

replay:

 tcm = NLMSG_DATA(n);
 clid = tcm->tcm_parent;
 q = p = ((void*)0);

 if ((dev = __dev_get_by_index(&init_net, tcm->tcm_ifindex)) == ((void*)0))
  return -ENODEV;

 err = nlmsg_parse(n, sizeof(*tcm), tca, TCA_MAX, ((void*)0));
 if (err < 0)
  return err;

 if (clid) {
  if (clid != TC_H_ROOT) {
   if (clid != TC_H_INGRESS) {
    if ((p = qdisc_lookup(dev, TC_H_MAJ(clid))) == ((void*)0))
     return -ENOENT;
    q = qdisc_leaf(p, clid);
   } else {
    q = dev->rx_queue.qdisc_sleeping;
   }
  } else {
   q = dev->qdisc;
  }


  if (q && q->handle == 0)
   q = ((void*)0);

  if (!q || !tcm->tcm_handle || q->handle != tcm->tcm_handle) {
   if (tcm->tcm_handle) {
    if (q && !(n->nlmsg_flags&NLM_F_REPLACE))
     return -EEXIST;
    if (TC_H_MIN(tcm->tcm_handle))
     return -EINVAL;
    if ((q = qdisc_lookup(dev, tcm->tcm_handle)) == ((void*)0))
     goto create_n_graft;
    if (n->nlmsg_flags&NLM_F_EXCL)
     return -EEXIST;
    if (tca[TCA_KIND] && nla_strcmp(tca[TCA_KIND], q->ops->id))
     return -EINVAL;
    if (q == p ||
        (p && check_loop(q, p, 0)))
     return -ELOOP;
    atomic_inc(&q->refcnt);
    goto graft;
   } else {
    if (q == ((void*)0))
     goto create_n_graft;
    if ((n->nlmsg_flags&NLM_F_CREATE) &&
        (n->nlmsg_flags&NLM_F_REPLACE) &&
        ((n->nlmsg_flags&NLM_F_EXCL) ||
         (tca[TCA_KIND] &&
          nla_strcmp(tca[TCA_KIND], q->ops->id))))
     goto create_n_graft;
   }
  }
 } else {
  if (!tcm->tcm_handle)
   return -EINVAL;
  q = qdisc_lookup(dev, tcm->tcm_handle);
 }


 if (q == ((void*)0))
  return -ENOENT;
 if (n->nlmsg_flags&NLM_F_EXCL)
  return -EEXIST;
 if (tca[TCA_KIND] && nla_strcmp(tca[TCA_KIND], q->ops->id))
  return -EINVAL;
 err = qdisc_change(q, tca);
 if (err == 0)
  qdisc_notify(skb, n, clid, ((void*)0), q);
 return err;

create_n_graft:
 if (!(n->nlmsg_flags&NLM_F_CREATE))
  return -ENOENT;
 if (clid == TC_H_INGRESS)
  q = qdisc_create(dev, &dev->rx_queue, p,
     tcm->tcm_parent, tcm->tcm_parent,
     tca, &err);
 else {
  struct netdev_queue *dev_queue;

  if (p && p->ops->cl_ops && p->ops->cl_ops->select_queue)
   dev_queue = p->ops->cl_ops->select_queue(p, tcm);
  else if (p)
   dev_queue = p->dev_queue;
  else
   dev_queue = netdev_get_tx_queue(dev, 0);

  q = qdisc_create(dev, dev_queue, p,
     tcm->tcm_parent, tcm->tcm_handle,
     tca, &err);
 }
 if (q == ((void*)0)) {
  if (err == -EAGAIN)
   goto replay;
  return err;
 }

graft:
 err = qdisc_graft(dev, p, skb, n, clid, q, ((void*)0));
 if (err) {
  if (q)
   qdisc_destroy(q);
  return err;
 }

 return 0;
}
