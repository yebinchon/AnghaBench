
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int tc_index; } ;


 int GRED_VQ_MASK ;

__attribute__((used)) static inline u16 tc_index_to_dp(struct sk_buff *skb)
{
 return skb->tc_index & GRED_VQ_MASK;
}
