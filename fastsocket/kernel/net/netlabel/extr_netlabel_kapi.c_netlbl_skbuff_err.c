
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ CIPSO_V4_OPTEXIST (struct sk_buff*) ;
 int cipso_v4_error (struct sk_buff*,int,int) ;

void netlbl_skbuff_err(struct sk_buff *skb, int error, int gateway)
{
 if (CIPSO_V4_OPTEXIST(skb))
  cipso_v4_error(skb, error, gateway);
}
