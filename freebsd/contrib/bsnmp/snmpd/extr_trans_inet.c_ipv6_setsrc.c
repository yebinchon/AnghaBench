
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int a6; } ;
struct port_sock {TYPE_1__ ret_source; } ;
struct msghdr {int msg_controllen; } ;
struct in6_pktinfo {int dummy; } ;
struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 int IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
ipv6_setsrc(struct port_sock *sock, struct msghdr *msg)
{
 struct cmsghdr *cmsg = CMSG_FIRSTHDR(msg);


 cmsg->cmsg_level = IPPROTO_IPV6;
 cmsg->cmsg_type = IPV6_PKTINFO;
 cmsg->cmsg_len = CMSG_LEN(sizeof(struct in6_pktinfo));
 memcpy(CMSG_DATA(cmsg), &sock->ret_source.a6,
     sizeof(struct in6_pktinfo));

 msg->msg_controllen = CMSG_SPACE(sizeof(struct in6_pktinfo));
}
