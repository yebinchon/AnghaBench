
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct raw_sock {int err_mask; int count; int filter; } ;
struct net_device {int dummy; } ;


 int raw_disable_errfilter (struct net_device*,struct sock*,int ) ;
 int raw_disable_filters (struct net_device*,struct sock*,int ,int ) ;
 struct raw_sock* raw_sk (struct sock*) ;

__attribute__((used)) static inline void raw_disable_allfilters(struct net_device *dev,
       struct sock *sk)
{
 struct raw_sock *ro = raw_sk(sk);

 raw_disable_filters(dev, sk, ro->filter, ro->count);
 raw_disable_errfilter(dev, sk, ro->err_mask);
}
