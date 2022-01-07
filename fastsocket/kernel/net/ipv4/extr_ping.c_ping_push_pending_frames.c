
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct sk_buff {int ip_summed; } ;
struct TYPE_2__ {int checksum; } ;
struct pingfakehdr {TYPE_1__ icmph; int wcheck; } ;
struct icmphdr {int dummy; } ;


 int CHECKSUM_NONE ;
 int csum_fold (int ) ;
 int csum_partial (char*,int,int ) ;
 int icmp_hdr (struct sk_buff*) ;
 int ip_push_pending_frames (struct sock*) ;
 int memcpy (int ,TYPE_1__*,int) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static int ping_push_pending_frames(struct sock *sk, struct pingfakehdr *pfh)
{
 struct sk_buff *skb = skb_peek(&sk->sk_write_queue);

 pfh->wcheck = csum_partial((char *)&pfh->icmph,
  sizeof(struct icmphdr), pfh->wcheck);
 pfh->icmph.checksum = csum_fold(pfh->wcheck);
 memcpy(icmp_hdr(skb), &pfh->icmph, sizeof(struct icmphdr));
 skb->ip_summed = CHECKSUM_NONE;
 return ip_push_pending_frames(sk);
}
