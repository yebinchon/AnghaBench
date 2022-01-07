
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int flags; } ;


 scalar_t__ CIPSO_V4_OPTEXIST (struct sk_buff const*) ;
 int ENOMSG ;
 int NETLBL_SECATTR_CACHE ;
 int cipso_v4_cache_add (struct sk_buff const*,struct netlbl_lsm_secattr const*) ;

int netlbl_cache_add(const struct sk_buff *skb,
       const struct netlbl_lsm_secattr *secattr)
{
 if ((secattr->flags & NETLBL_SECATTR_CACHE) == 0)
  return -ENOMSG;

 if (CIPSO_V4_OPTEXIST(skb))
  return cipso_v4_cache_add(skb, secattr);

 return -ENOMSG;
}
