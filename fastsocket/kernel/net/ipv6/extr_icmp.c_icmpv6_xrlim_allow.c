
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct TYPE_8__ {int plen; } ;
struct rt6_info {TYPE_4__ rt6i_dst; } ;
struct TYPE_6__ {int icmpv6_time; } ;
struct TYPE_7__ {TYPE_2__ sysctl; } ;
struct net {TYPE_3__ ipv6; } ;
struct flowi {int dummy; } ;
struct dst_entry {TYPE_1__* dev; scalar_t__ error; } ;
struct TYPE_5__ {int flags; } ;


 int ICMPV6_INFOMSG_MASK ;
 int ICMPV6_PKT_TOOBIG ;
 int IFF_LOOPBACK ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int dst_release (struct dst_entry*) ;
 int ip6_dst_idev (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,struct sock*,struct flowi*) ;
 struct net* sock_net (struct sock*) ;
 int xrlim_allow (struct dst_entry*,int) ;

__attribute__((used)) static inline int icmpv6_xrlim_allow(struct sock *sk, u8 type,
         struct flowi *fl)
{
 struct dst_entry *dst;
 struct net *net = sock_net(sk);
 int res = 0;


 if (type & ICMPV6_INFOMSG_MASK)
  return 1;


 if (type == ICMPV6_PKT_TOOBIG)
  return 1;






 dst = ip6_route_output(net, sk, fl);
 if (dst->error) {
  IP6_INC_STATS(net, ip6_dst_idev(dst),
         IPSTATS_MIB_OUTNOROUTES);
 } else if (dst->dev && (dst->dev->flags&IFF_LOOPBACK)) {
  res = 1;
 } else {
  struct rt6_info *rt = (struct rt6_info *)dst;
  int tmo = net->ipv6.sysctl.icmpv6_time;


  if (rt->rt6i_dst.plen < 128)
   tmo >>= ((128 - rt->rt6i_dst.plen)>>5);

  res = xrlim_allow(dst, tmo);
 }
 dst_release(dst);
 return res;
}
