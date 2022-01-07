
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct socket {TYPE_1__* sk; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNIX ;
 scalar_t__ SECSID_NULL ;
 int SOCK_INODE (struct socket*) ;
 scalar_t__ htons (int ) ;
 int selinux_inode_getsecid (int ,scalar_t__*) ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int selinux_socket_getpeersec_dgram(struct socket *sock, struct sk_buff *skb, u32 *secid)
{
 u32 peer_secid = SECSID_NULL;
 u16 family;

 if (skb && skb->protocol == htons(ETH_P_IP))
  family = PF_INET;
 else if (skb && skb->protocol == htons(ETH_P_IPV6))
  family = PF_INET6;
 else if (sock)
  family = sock->sk->sk_family;
 else
  goto out;

 if (sock && family == PF_UNIX)
  selinux_inode_getsecid(SOCK_INODE(sock), &peer_secid);
 else if (skb)
  selinux_skb_peerlbl_sid(skb, family, &peer_secid);

out:
 *secid = peer_secid;
 if (peer_secid == SECSID_NULL)
  return -EINVAL;
 return 0;
}
