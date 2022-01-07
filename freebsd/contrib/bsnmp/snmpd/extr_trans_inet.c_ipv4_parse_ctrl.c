
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockcred {scalar_t__ sc_euid; } ;
struct TYPE_4__ {int priv; scalar_t__ cred; } ;
struct TYPE_3__ {int a4; } ;
struct port_sock {TYPE_2__ input; TYPE_1__ ret_source; } ;
struct msghdr {int dummy; } ;
struct in_addr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr const*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr const*,struct cmsghdr*) ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IP_RECVDSTADDR ;
 scalar_t__ SCM_CREDS ;
 scalar_t__ SOL_SOCKET ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static void
ipv4_parse_ctrl(struct port_sock *sock, const struct msghdr *msg)
{
 struct sockcred *cred = ((void*)0);

 for (struct cmsghdr *cmsg = CMSG_FIRSTHDR(msg); cmsg != ((void*)0);
     cmsg = CMSG_NXTHDR(msg, cmsg)) {

  if (cmsg->cmsg_level == IPPROTO_IP &&
      cmsg->cmsg_type == IP_RECVDSTADDR) {
   memcpy(&sock->ret_source.a4, CMSG_DATA(cmsg),
       sizeof(struct in_addr));

  } else if (cmsg->cmsg_level == SOL_SOCKET &&
      cmsg->cmsg_type == SCM_CREDS) {
   cred = (struct sockcred *)(void *)CMSG_DATA(cmsg);
  }
 }

 sock->input.priv = 0;
 if (sock->input.cred && cred)

  sock->input.priv = (cred->sc_euid == 0);
}
