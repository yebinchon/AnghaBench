
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int ip_set_id_t ;


 scalar_t__ ip_set_test (int ,struct sk_buff const*,int ,int ,int ) ;

__attribute__((used)) static inline int
match_set(ip_set_id_t index, const struct sk_buff *skb,
   u8 pf, u8 dim, u8 flags, int inv)
{
 if (ip_set_test(index, skb, pf, dim, flags))
  inv = !inv;
 return inv;
}
