
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int dst_cookie; } ;


 TYPE_1__* inet6_sk (struct sock*) ;
 int ip6_dst_lookup_tail (struct sock*,struct dst_entry**,struct flowi*) ;
 struct dst_entry* ip6_sk_dst_check (struct sock*,struct dst_entry*,struct flowi*) ;
 struct dst_entry* sk_dst_check (struct sock*,int ) ;

int ip6_sk_dst_lookup(struct sock *sk, struct dst_entry **dst, struct flowi *fl)
{
 *dst = ((void*)0);
 if (sk) {
  *dst = sk_dst_check(sk, inet6_sk(sk)->dst_cookie);
  *dst = ip6_sk_dst_check(sk, *dst, fl);
 }

 return ip6_dst_lookup_tail(sk, dst, fl);
}
