
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct sock {struct xfrm_policy** sk_policy; } ;


 int ENOMEM ;
 void* clone_policy (struct xfrm_policy*,int) ;

int __xfrm_sk_clone_policy(struct sock *sk)
{
 struct xfrm_policy *p0 = sk->sk_policy[0],
      *p1 = sk->sk_policy[1];

 sk->sk_policy[0] = sk->sk_policy[1] = ((void*)0);
 if (p0 && (sk->sk_policy[0] = clone_policy(p0, 0)) == ((void*)0))
  return -ENOMEM;
 if (p1 && (sk->sk_policy[1] = clone_policy(p1, 1)) == ((void*)0))
  return -ENOMEM;
 return 0;
}
