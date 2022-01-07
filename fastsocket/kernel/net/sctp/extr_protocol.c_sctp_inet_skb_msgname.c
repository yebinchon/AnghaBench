
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int source; } ;
struct TYPE_4__ {int saddr; } ;


 TYPE_2__* ip_hdr (struct sk_buff*) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;
 int sctp_inet_msgname (char*,int*) ;

__attribute__((used)) static void sctp_inet_skb_msgname(struct sk_buff *skb, char *msgname, int *len)
{
 if (msgname) {
  struct sctphdr *sh = sctp_hdr(skb);
  struct sockaddr_in *sin = (struct sockaddr_in *)msgname;

  sctp_inet_msgname(msgname, len);
  sin->sin_port = sh->source;
  sin->sin_addr.s_addr = ip_hdr(skb)->saddr;
 }
}
