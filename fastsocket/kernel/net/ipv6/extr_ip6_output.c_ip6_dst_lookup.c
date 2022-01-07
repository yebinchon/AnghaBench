
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int ip6_dst_lookup_tail (struct sock*,struct dst_entry**,struct flowi*) ;

int ip6_dst_lookup(struct sock *sk, struct dst_entry **dst, struct flowi *fl)
{
 *dst = ((void*)0);
 return ip6_dst_lookup_tail(sk, dst, fl);
}
