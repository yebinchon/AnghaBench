
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int __u32 ;
typedef int __be16 ;


 int COOKIEBITS ;
 int COOKIEMASK ;
 int cookie_hash (struct in6_addr*,struct in6_addr*,int ,int ,int,int) ;

__attribute__((used)) static __u32 secure_tcp_syn_cookie(struct in6_addr *saddr, struct in6_addr *daddr,
       __be16 sport, __be16 dport, __u32 sseq,
       __u32 count, __u32 data)
{
 return (cookie_hash(saddr, daddr, sport, dport, 0, 0) +
  sseq + (count << COOKIEBITS) +
  ((cookie_hash(saddr, daddr, sport, dport, count, 1) + data)
  & COOKIEMASK));
}
