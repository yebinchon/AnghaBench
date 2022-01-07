
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct ip_options {int __data; int optlen; } ;
struct TYPE_3__ {scalar_t__ optlen; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IP_RETOPTS ;
 int MSG_CTRUNC ;
 int SOL_IP ;
 scalar_t__ ip_options_echo (struct ip_options*,struct sk_buff*) ;
 int ip_options_undo (struct ip_options*) ;
 int put_cmsg (struct msghdr*,int ,int ,int ,int ) ;

__attribute__((used)) static void ip_cmsg_recv_retopts(struct msghdr *msg, struct sk_buff *skb)
{
 unsigned char optbuf[sizeof(struct ip_options) + 40];
 struct ip_options * opt = (struct ip_options *)optbuf;

 if (IPCB(skb)->opt.optlen == 0)
  return;

 if (ip_options_echo(opt, skb)) {
  msg->msg_flags |= MSG_CTRUNC;
  return;
 }
 ip_options_undo(opt);

 put_cmsg(msg, SOL_IP, IP_RETOPTS, opt->optlen, opt->__data);
}
