
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int now ;
typedef int __be32 ;


 int DCCPO_TIMESTAMP ;
 int dccp_insert_option (struct sock*,struct sk_buff*,int ,int *,int) ;
 int dccp_timestamp () ;
 int htonl (int ) ;

int dccp_insert_option_timestamp(struct sock *sk, struct sk_buff *skb)
{
 __be32 now = htonl(dccp_timestamp());



 return dccp_insert_option(sk, skb, DCCPO_TIMESTAMP, &now, sizeof(now));
}
