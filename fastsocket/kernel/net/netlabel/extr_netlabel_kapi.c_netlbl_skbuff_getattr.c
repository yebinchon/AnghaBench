
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;




 int CIPSO_V4_OPTEXIST (struct sk_buff const*) ;
 int cipso_v4_skbuff_getattr (struct sk_buff const*,struct netlbl_lsm_secattr*) ;
 int netlbl_unlabel_getattr (struct sk_buff const*,int,struct netlbl_lsm_secattr*) ;

int netlbl_skbuff_getattr(const struct sk_buff *skb,
     u16 family,
     struct netlbl_lsm_secattr *secattr)
{
 switch (family) {
 case 129:
  if (CIPSO_V4_OPTEXIST(skb) &&
      cipso_v4_skbuff_getattr(skb, secattr) == 0)
   return 0;
  break;




 }

 return netlbl_unlabel_getattr(skb, family, secattr);
}
