
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct rtable {int rt_src; } ;
struct dst_entry {int dummy; } ;
typedef int __be16 ;


 int AF_INET ;

__attribute__((used)) static void sctp_v4_dst_saddr(union sctp_addr *saddr, struct dst_entry *dst,
         __be16 port)
{
 struct rtable *rt = (struct rtable *)dst;
 saddr->v4.sin_family = AF_INET;
 saddr->v4.sin_port = port;
 saddr->v4.sin_addr.s_addr = rt->rt_src;
}
