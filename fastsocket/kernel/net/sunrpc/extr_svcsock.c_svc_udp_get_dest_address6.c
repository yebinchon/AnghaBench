
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr6; } ;
struct svc_rqst {TYPE_1__ rq_daddr; } ;
struct in6_pktinfo {int ipi6_addr; } ;
struct cmsghdr {scalar_t__ cmsg_type; } ;


 struct in6_pktinfo* CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ IPV6_PKTINFO ;
 int ipv6_addr_copy (int *,int *) ;

__attribute__((used)) static int svc_udp_get_dest_address6(struct svc_rqst *rqstp,
         struct cmsghdr *cmh)
{
 struct in6_pktinfo *pki = CMSG_DATA(cmh);
 if (cmh->cmsg_type != IPV6_PKTINFO)
  return 0;
 ipv6_addr_copy(&rqstp->rq_daddr.addr6, &pki->ipi6_addr);
 return 1;
}
