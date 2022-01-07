
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int * sk_dst_cache; } ;
struct rt6_info {scalar_t__ rt6i_flow_cache_genid; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* __sk_dst_check (struct sock*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int dst_release (struct dst_entry*) ;
 int flow_cache_genid ;

__attribute__((used)) static inline
struct dst_entry *__inet6_csk_dst_check(struct sock *sk, u32 cookie)
{
 struct dst_entry *dst;

 dst = __sk_dst_check(sk, cookie);
 return dst;
}
