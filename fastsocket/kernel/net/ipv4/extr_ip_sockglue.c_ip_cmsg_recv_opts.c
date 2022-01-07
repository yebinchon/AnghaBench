
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_3__ {scalar_t__ optlen; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IP_RECVOPTS ;
 int SOL_IP ;
 scalar_t__ ip_hdr (struct sk_buff*) ;
 int put_cmsg (struct msghdr*,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ip_cmsg_recv_opts(struct msghdr *msg, struct sk_buff *skb)
{
 if (IPCB(skb)->opt.optlen == 0)
  return;

 put_cmsg(msg, SOL_IP, IP_RECVOPTS, IPCB(skb)->opt.optlen,
   ip_hdr(skb) + 1);
}
