
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ rxhash; } ;
typedef int __sum16 ;
typedef int __be16 ;


 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static void set_tp_port(struct sk_buff *skb, __be16 *port,
    __be16 new_port, __sum16 *check)
{
 inet_proto_csum_replace2(check, skb, *port, new_port, 0);
 *port = new_port;
 skb->rxhash = 0;
}
