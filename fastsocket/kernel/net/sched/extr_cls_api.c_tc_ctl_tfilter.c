
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_info; scalar_t__ tcm_parent; scalar_t__ tcm_handle; int tcm_ifindex; } ;
struct tcf_proto_ops {int (* init ) (struct tcf_proto*) ;unsigned long (* get ) (struct tcf_proto*,scalar_t__) ;int (* delete ) (struct tcf_proto*,unsigned long) ;int (* change ) (struct tcf_proto*,unsigned long,scalar_t__,struct nlattr**,unsigned long*) ;int kind; int owner; int classify; } ;
struct tcf_proto {scalar_t__ prio; scalar_t__ protocol; struct tcf_proto* next; struct tcf_proto_ops* ops; scalar_t__ classid; int classify; struct Qdisc* q; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {unsigned long (* get ) (struct Qdisc*,scalar_t__) ;int (* put ) (struct Qdisc*,unsigned long) ;struct tcf_proto** (* tcf_chain ) (struct Qdisc*,unsigned long) ;} ;
struct Qdisc {scalar_t__ handle; TYPE_1__* ops; } ;
typedef int spinlock_t ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;


 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IFNAMSIZ ;
 struct tcmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;



 size_t TCA_KIND ;
 int TCA_MAX ;
 scalar_t__ TC_H_MAJ (scalar_t__) ;
 scalar_t__ TC_H_MAKE (int,unsigned int) ;
 scalar_t__ TC_H_MIN (scalar_t__) ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 struct net init_net ;
 int kfree (struct tcf_proto*) ;
 struct tcf_proto* kzalloc (int,int ) ;
 int module_put (int ) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int *) ;
 struct Qdisc* qdisc_lookup (struct net_device*,scalar_t__) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int request_module (char*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned long stub1 (struct Qdisc*,scalar_t__) ;
 struct tcf_proto** stub2 (struct Qdisc*,unsigned long) ;
 int stub3 (struct tcf_proto*) ;
 unsigned long stub4 (struct tcf_proto*,scalar_t__) ;
 int stub5 (struct tcf_proto*,unsigned long) ;
 int stub6 (struct tcf_proto*,unsigned long,scalar_t__,struct nlattr**,unsigned long*) ;
 int stub7 (struct Qdisc*,unsigned long) ;
 scalar_t__ tcf_auto_prio (struct tcf_proto*) ;
 int tcf_destroy (struct tcf_proto*) ;
 struct tcf_proto_ops* tcf_proto_lookup_ops (struct nlattr*) ;
 int tfilter_notify (struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,unsigned long,int const) ;

__attribute__((used)) static int tc_ctl_tfilter(struct sk_buff *skb, struct nlmsghdr *n, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_MAX + 1];
 spinlock_t *root_lock;
 struct tcmsg *t;
 u32 protocol;
 u32 prio;
 u32 nprio;
 u32 parent;
 struct net_device *dev;
 struct Qdisc *q;
 struct tcf_proto **back, **chain;
 struct tcf_proto *tp;
 struct tcf_proto_ops *tp_ops;
 const struct Qdisc_class_ops *cops;
 unsigned long cl;
 unsigned long fh;
 int err;
 int tp_created = 0;

 if (net != &init_net)
  return -EINVAL;

replay:
 t = NLMSG_DATA(n);
 protocol = TC_H_MIN(t->tcm_info);
 prio = TC_H_MAJ(t->tcm_info);
 nprio = prio;
 parent = t->tcm_parent;
 cl = 0;

 if (prio == 0) {

  if (n->nlmsg_type != 128 || !(n->nlmsg_flags&NLM_F_CREATE))
   return -ENOENT;
  prio = TC_H_MAKE(0x80000000U, 0U);
 }




 dev = __dev_get_by_index(&init_net, t->tcm_ifindex);
 if (dev == ((void*)0))
  return -ENODEV;

 err = nlmsg_parse(n, sizeof(*t), tca, TCA_MAX, ((void*)0));
 if (err < 0)
  return err;


 if (!parent) {
  q = dev->qdisc;
  parent = q->handle;
 } else {
  q = qdisc_lookup(dev, TC_H_MAJ(t->tcm_parent));
  if (q == ((void*)0))
   return -EINVAL;
 }


 if ((cops = q->ops->cl_ops) == ((void*)0))
  return -EINVAL;

 if (cops->tcf_chain == ((void*)0))
  return -EOPNOTSUPP;


 if (TC_H_MIN(parent)) {
  cl = cops->get(q, parent);
  if (cl == 0)
   return -ENOENT;
 }


 chain = cops->tcf_chain(q, cl);
 err = -EINVAL;
 if (chain == ((void*)0))
  goto errout;


 for (back = chain; (tp=*back) != ((void*)0); back = &tp->next) {
  if (tp->prio >= prio) {
   if (tp->prio == prio) {
    if (!nprio || (tp->protocol != protocol && protocol))
     goto errout;
   } else
    tp = ((void*)0);
   break;
  }
 }

 root_lock = qdisc_root_sleeping_lock(q);

 if (tp == ((void*)0)) {


  if (tca[TCA_KIND] == ((void*)0) || !protocol)
   goto errout;

  err = -ENOENT;
  if (n->nlmsg_type != 128 || !(n->nlmsg_flags&NLM_F_CREATE))
   goto errout;




  err = -ENOBUFS;
  tp = kzalloc(sizeof(*tp), GFP_KERNEL);
  if (tp == ((void*)0))
   goto errout;
  err = -ENOENT;
  tp_ops = tcf_proto_lookup_ops(tca[TCA_KIND]);
  if (tp_ops == ((void*)0)) {
   kfree(tp);
   goto errout;
  }
  tp->ops = tp_ops;
  tp->protocol = protocol;
  tp->prio = nprio ? : TC_H_MAJ(tcf_auto_prio(*back));
  tp->q = q;
  tp->classify = tp_ops->classify;
  tp->classid = parent;

  err = tp_ops->init(tp);
  if (err != 0) {
   module_put(tp_ops->owner);
   kfree(tp);
   goto errout;
  }

  tp_created = 1;

 } else if (tca[TCA_KIND] && nla_strcmp(tca[TCA_KIND], tp->ops->kind))
  goto errout;

 fh = tp->ops->get(tp, t->tcm_handle);

 if (fh == 0) {
  if (n->nlmsg_type == 130 && t->tcm_handle == 0) {
   spin_lock_bh(root_lock);
   *back = tp->next;
   spin_unlock_bh(root_lock);

   tfilter_notify(skb, n, tp, fh, 130);
   tcf_destroy(tp);
   err = 0;
   goto errout;
  }

  err = -ENOENT;
  if (n->nlmsg_type != 128 ||
      !(n->nlmsg_flags & NLM_F_CREATE))
   goto errout;
 } else {
  switch (n->nlmsg_type) {
  case 128:
   err = -EEXIST;
   if (n->nlmsg_flags & NLM_F_EXCL) {
    if (tp_created)
     tcf_destroy(tp);
    goto errout;
   }
   break;
  case 130:
   err = tp->ops->delete(tp, fh);
   if (err == 0)
    tfilter_notify(skb, n, tp, fh, 130);
   goto errout;
  case 129:
   err = tfilter_notify(skb, n, tp, fh, 128);
   goto errout;
  default:
   err = -EINVAL;
   goto errout;
  }
 }

 err = tp->ops->change(tp, cl, t->tcm_handle, tca, &fh);
 if (err == 0) {
  if (tp_created) {
   spin_lock_bh(root_lock);
   tp->next = *back;
   *back = tp;
   spin_unlock_bh(root_lock);
  }
  tfilter_notify(skb, n, tp, fh, 128);
 } else {
  if (tp_created)
   tcf_destroy(tp);
 }

errout:
 if (cl)
  cops->put(q, cl);
 if (err == -EAGAIN)

  goto replay;
 return err;
}
