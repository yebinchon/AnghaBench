
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rt6_info {int rt6i_flow_cache_genid; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;


 int __ip6_dst_store (struct sock*,struct dst_entry*,struct in6_addr*,struct in6_addr*) ;
 int atomic_read (int *) ;
 int flow_cache_genid ;

__attribute__((used)) static inline
void __inet6_csk_dst_store(struct sock *sk, struct dst_entry *dst,
      struct in6_addr *daddr, struct in6_addr *saddr)
{
 __ip6_dst_store(sk, dst, daddr, saddr);







}
