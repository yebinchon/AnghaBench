
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int tos; } ;


 int IP_TOS ;
 int SOL_IP ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int put_cmsg (struct msghdr*,int ,int ,int,int *) ;

__attribute__((used)) static void ip_cmsg_recv_tos(struct msghdr *msg, struct sk_buff *skb)
{
 put_cmsg(msg, SOL_IP, IP_TOS, 1, &ip_hdr(skb)->tos);
}
