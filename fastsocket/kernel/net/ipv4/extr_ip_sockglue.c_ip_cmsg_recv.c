
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct msghdr {int dummy; } ;
struct inet_sock {unsigned int cmsg_flags; } ;


 struct inet_sock* inet_sk (int ) ;
 int ip_cmsg_recv_dstaddr (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_opts (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_pktinfo (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_retopts (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_security (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_tos (struct msghdr*,struct sk_buff*) ;
 int ip_cmsg_recv_ttl (struct msghdr*,struct sk_buff*) ;

void ip_cmsg_recv(struct msghdr *msg, struct sk_buff *skb)
{
 struct inet_sock *inet = inet_sk(skb->sk);
 unsigned flags = inet->cmsg_flags;


 if (flags & 1)
  ip_cmsg_recv_pktinfo(msg, skb);
 if ((flags >>= 1) == 0)
  return;

 if (flags & 1)
  ip_cmsg_recv_ttl(msg, skb);
 if ((flags >>= 1) == 0)
  return;

 if (flags & 1)
  ip_cmsg_recv_tos(msg, skb);
 if ((flags >>= 1) == 0)
  return;

 if (flags & 1)
  ip_cmsg_recv_opts(msg, skb);
 if ((flags >>= 1) == 0)
  return;

 if (flags & 1)
  ip_cmsg_recv_retopts(msg, skb);
 if ((flags >>= 1) == 0)
  return;

 if (flags & 1)
  ip_cmsg_recv_security(msg, skb);

 if ((flags >>= 1) == 0)
  return;
 if (flags & 1)
  ip_cmsg_recv_dstaddr(msg, skb);

}
