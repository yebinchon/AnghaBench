
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int flags; } ;
struct in6_addr {int dummy; } ;
struct flowi {int fl6_dst; int fl6_src; } ;
struct dst_entry {int error; int dev; TYPE_1__* neighbour; } ;
struct TYPE_4__ {int srcprefs; } ;
struct TYPE_3__ {int nud_state; } ;


 int ENETUNREACH ;
 int IFA_F_OPTIMISTIC ;
 int IP6_INC_STATS_BH (struct net*,int *,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int NUD_VALID ;
 int dst_release (struct dst_entry*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 TYPE_2__* inet6_sk (struct sock*) ;
 int ip6_route_get_saddr (struct net*,struct rt6_info*,int *,int ,int *) ;
 struct dst_entry* ip6_route_output (struct net*,struct sock*,struct flowi*) ;
 scalar_t__ ipv6_addr_any (int *) ;
 struct inet6_ifaddr* ipv6_get_ifaddr (struct net*,int *,int ,int) ;
 int memcpy (struct flowi*,struct flowi*,int) ;
 int memset (int *,int ,int) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int ip6_dst_lookup_tail(struct sock *sk,
          struct dst_entry **dst, struct flowi *fl)
{
 int err;
 struct net *net = sock_net(sk);

 if (*dst == ((void*)0))
  *dst = ip6_route_output(net, sk, fl);

 if ((err = (*dst)->error))
  goto out_err_release;

 if (ipv6_addr_any(&fl->fl6_src)) {
  struct rt6_info *rt = (struct rt6_info *) *dst;
  err = ip6_route_get_saddr(net, rt, &fl->fl6_dst,
       sk ? inet6_sk(sk)->srcprefs : 0,
       &fl->fl6_src);

  if (err)
   goto out_err_release;
 }
 return 0;

out_err_release:
 if (err == -ENETUNREACH)
  IP6_INC_STATS_BH(net, ((void*)0), IPSTATS_MIB_OUTNOROUTES);
 dst_release(*dst);
 *dst = ((void*)0);
 return err;
}
