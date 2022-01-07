
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ICMP_DEST_UNREACH ;
 int icmp_send (struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static inline void send_unreach(struct sk_buff *skb_in, int code)
{
 icmp_send(skb_in, ICMP_DEST_UNREACH, code, 0);
}
