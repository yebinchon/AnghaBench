
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct fib_table {int (* tb_insert ) (struct fib_table*,struct fib_config*) ;} ;
struct fib_config {int fc_table; } ;


 int ENOBUFS ;
 struct fib_table* fib_new_table (struct net*,int ) ;
 int rtm_to_fib_config (struct net*,struct sk_buff*,struct nlmsghdr*,struct fib_config*) ;
 struct net* sock_net (int ) ;
 int stub1 (struct fib_table*,struct fib_config*) ;

__attribute__((used)) static int inet_rtm_newroute(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct fib_config cfg;
 struct fib_table *tb;
 int err;

 err = rtm_to_fib_config(net, skb, nlh, &cfg);
 if (err < 0)
  goto errout;

 tb = fib_new_table(net, cfg.fc_table);
 if (tb == ((void*)0)) {
  err = -ENOBUFS;
  goto errout;
 }

 err = tb->tb_insert(tb, &cfg);
errout:
 return err;
}
