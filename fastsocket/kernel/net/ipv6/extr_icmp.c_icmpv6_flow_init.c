
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi {int oif; scalar_t__ fl_icmp_code; int fl_icmp_type; int proto; int fl6_dst; int fl6_src; } ;


 int IPPROTO_ICMPV6 ;
 int ipv6_addr_copy (int *,struct in6_addr const*) ;
 int memset (struct flowi*,int ,int) ;
 int security_sk_classify_flow (struct sock*,struct flowi*) ;

void icmpv6_flow_init(struct sock *sk, struct flowi *fl,
        u8 type,
        const struct in6_addr *saddr,
        const struct in6_addr *daddr,
        int oif)
{
 memset(fl, 0, sizeof(*fl));
 ipv6_addr_copy(&fl->fl6_src, saddr);
 ipv6_addr_copy(&fl->fl6_dst, daddr);
 fl->proto = IPPROTO_ICMPV6;
 fl->fl_icmp_type = type;
 fl->fl_icmp_code = 0;
 fl->oif = oif;
 security_sk_classify_flow(sk, fl);
}
