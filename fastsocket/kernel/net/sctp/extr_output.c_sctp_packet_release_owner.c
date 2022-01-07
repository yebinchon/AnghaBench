
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;


 int sk_free (int ) ;

__attribute__((used)) static void sctp_packet_release_owner(struct sk_buff *skb)
{
 sk_free(skb->sk);
}
