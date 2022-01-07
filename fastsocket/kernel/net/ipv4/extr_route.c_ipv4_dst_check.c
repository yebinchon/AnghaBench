
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtable {int dummy; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ rt_is_expired (struct rtable*) ;

__attribute__((used)) static struct dst_entry *ipv4_dst_check(struct dst_entry *dst, u32 cookie)
{
 if (rt_is_expired((struct rtable *)dst))
  return ((void*)0);
 return dst;
}
