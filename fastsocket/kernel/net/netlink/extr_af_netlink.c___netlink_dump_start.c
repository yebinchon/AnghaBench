
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_protocol; } ;
struct sk_buff {int users; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_sock {int cb_mutex; struct netlink_callback* cb; } ;
struct netlink_dump_control {int min_dump_alloc; int module; int done; int dump; } ;
struct netlink_callback_extended {int module; int min_dump_alloc; } ;
struct netlink_callback {struct sk_buff* skb; struct nlmsghdr const* nlh; int done; int dump; } ;
struct TYPE_2__ {int pid; } ;


 int EBUSY ;
 int ECONNREFUSED ;
 int EINTR ;
 int ENOBUFS ;
 int EPROTONOSUPPORT ;
 int GFP_KERNEL ;
 int NETLINK_CALLBACK_TOTAL_SIZE ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int atomic_inc (int *) ;
 struct netlink_callback* kzalloc (int ,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int netlink_destroy_callback (struct netlink_callback*) ;
 int netlink_dump (struct sock*) ;
 struct sock* netlink_lookup (int ,int ,int ) ;
 struct netlink_callback_extended* nl_callback_extended (struct netlink_callback*) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 int try_module_get (int ) ;

int __netlink_dump_start(struct sock *ssk, struct sk_buff *skb,
         const struct nlmsghdr *nlh,
         struct netlink_dump_control *control)
{
 struct netlink_callback *cb;
 struct netlink_callback_extended *cb_ext;
 struct sock *sk;
 struct netlink_sock *nlk;
 int ret;

 cb = kzalloc(NETLINK_CALLBACK_TOTAL_SIZE, GFP_KERNEL);
 if (cb == ((void*)0))
  return -ENOBUFS;

 cb_ext = nl_callback_extended(cb);
 cb->dump = control->dump;
 cb->done = control->done;
 cb->nlh = nlh;
 cb_ext->module = control->module;
 cb_ext->min_dump_alloc = control->min_dump_alloc;
 atomic_inc(&skb->users);
 cb->skb = skb;

 sk = netlink_lookup(sock_net(ssk), ssk->sk_protocol, NETLINK_CB(skb).pid);
 if (sk == ((void*)0)) {
  netlink_destroy_callback(cb);
  return -ECONNREFUSED;
 }
 nlk = nlk_sk(sk);

 mutex_lock(nlk->cb_mutex);

 if (nlk->cb) {
  mutex_unlock(nlk->cb_mutex);
  netlink_destroy_callback(cb);
  ret = -EBUSY;
  goto out;
 }

 if (!try_module_get(cb_ext->module)) {
  mutex_unlock(nlk->cb_mutex);
  netlink_destroy_callback(cb);
  ret = -EPROTONOSUPPORT;
  goto out;
 }

 nlk->cb = cb;
 mutex_unlock(nlk->cb_mutex);

 ret = netlink_dump(sk);
out:
 sock_put(sk);

 if (ret)
  return ret;




 return -EINTR;
}
