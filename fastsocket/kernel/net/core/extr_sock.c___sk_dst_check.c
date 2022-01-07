
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {struct dst_entry* sk_dst_cache; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 int dst_release (struct dst_entry*) ;
 int sk_tx_queue_clear (struct sock*) ;
 int * stub1 (struct dst_entry*,int ) ;

struct dst_entry *__sk_dst_check(struct sock *sk, u32 cookie)
{
 struct dst_entry *dst = sk->sk_dst_cache;

 if (dst && dst->obsolete && dst->ops->check(dst, cookie) == ((void*)0)) {
  sk_tx_queue_clear(sk);
  sk->sk_dst_cache = ((void*)0);
  dst_release(dst);
  return ((void*)0);
 }

 return dst;
}
