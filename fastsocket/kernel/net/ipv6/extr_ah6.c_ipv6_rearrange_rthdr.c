
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt0_hdr {struct in6_addr* addr; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; } ;
struct ipv6_rt_hdr {int segments_left; int hdrlen; } ;


 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int memmove (struct in6_addr*,struct in6_addr*,int) ;

__attribute__((used)) static void ipv6_rearrange_rthdr(struct ipv6hdr *iph, struct ipv6_rt_hdr *rthdr)
{
 int segments, segments_left;
 struct in6_addr *addrs;
 struct in6_addr final_addr;

 segments_left = rthdr->segments_left;
 if (segments_left == 0)
  return;
 rthdr->segments_left = 0;
 segments = rthdr->hdrlen >> 1;

 addrs = ((struct rt0_hdr *)rthdr)->addr;
 ipv6_addr_copy(&final_addr, addrs + segments - 1);

 addrs += segments - segments_left;
 memmove(addrs + 1, addrs, (segments_left - 1) * sizeof(*addrs));

 ipv6_addr_copy(addrs, &iph->daddr);
 ipv6_addr_copy(&iph->daddr, &final_addr);
}
