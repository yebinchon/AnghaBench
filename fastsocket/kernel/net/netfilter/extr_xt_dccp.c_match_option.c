
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dummy; } ;


 int dccp_find_option (int ,struct sk_buff const*,unsigned int,struct dccp_hdr const*,int*) ;

__attribute__((used)) static inline bool
match_option(u_int8_t option, const struct sk_buff *skb, unsigned int protoff,
      const struct dccp_hdr *dh, bool *hotdrop)
{
 return dccp_find_option(option, skb, protoff, dh, hotdrop);
}
