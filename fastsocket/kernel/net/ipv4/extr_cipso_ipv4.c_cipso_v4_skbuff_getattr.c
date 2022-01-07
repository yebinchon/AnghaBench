
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int CIPSO_V4_OPTPTR (struct sk_buff const*) ;
 int cipso_v4_getattr (int ,struct netlbl_lsm_secattr*) ;

int cipso_v4_skbuff_getattr(const struct sk_buff *skb,
       struct netlbl_lsm_secattr *secattr)
{
 return cipso_v4_getattr(CIPSO_V4_OPTPTR(skb), secattr);
}
