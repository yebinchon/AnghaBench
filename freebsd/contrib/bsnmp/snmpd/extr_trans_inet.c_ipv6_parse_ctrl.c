
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockcred {scalar_t__ sc_euid; } ;
struct TYPE_6__ {int priv; scalar_t__ cred; } ;
struct TYPE_4__ {int ipi6_ifindex; int ipi6_addr; } ;
struct TYPE_5__ {TYPE_1__ a6; } ;
struct port_sock {TYPE_3__ input; TYPE_2__ ret_source; } ;
struct msghdr {int dummy; } ;
struct in6_pktinfo {int ipi6_ifindex; int ipi6_addr; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr const*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr const*,struct cmsghdr*) ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_PKTINFO ;
 scalar_t__ SCM_CREDS ;
 scalar_t__ SOL_SOCKET ;

__attribute__((used)) static void
ipv6_parse_ctrl(struct port_sock *sock, const struct msghdr *msg)
{
 struct sockcred *cred = ((void*)0);

 for (struct cmsghdr *cmsg = CMSG_FIRSTHDR(msg); cmsg != ((void*)0);
     cmsg = CMSG_NXTHDR(msg, cmsg)) {

  if (cmsg->cmsg_level == IPPROTO_IPV6 &&
      cmsg->cmsg_type == IPV6_PKTINFO) {
   const struct in6_pktinfo *info =
       (const struct in6_pktinfo *)(const void *)
       CMSG_DATA(cmsg);
   sock->ret_source.a6.ipi6_addr = info->ipi6_addr;
   sock->ret_source.a6.ipi6_ifindex =
       !IN6_IS_ADDR_LINKLOCAL(&info->ipi6_addr) ? 0:
       info->ipi6_ifindex;
  } else if (cmsg->cmsg_level == SOL_SOCKET &&
      cmsg->cmsg_type == SCM_CREDS) {
   cred = (struct sockcred *)(void *)CMSG_DATA(cmsg);
  }
 }

 sock->input.priv = 0;
 if (sock->input.cred && cred)

  sock->input.priv = (cred->sc_euid == 0);
}
