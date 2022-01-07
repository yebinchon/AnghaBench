
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sk_buff {int dummy; } ;


 int ip_defrag (struct sk_buff*,int ) ;
 int ip_hdr (struct sk_buff*) ;
 int ip_send_check (int ) ;

__attribute__((used)) static inline int ip_vs_gather_frags(struct sk_buff *skb, u_int32_t user)
{
 int err = ip_defrag(skb, user);

 if (!err)
  ip_send_check(ip_hdr(skb));

 return err;
}
