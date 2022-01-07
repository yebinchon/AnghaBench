
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sk_buff {int dummy; } ;


 int ip_defrag (struct sk_buff*,int ) ;
 int ip_hdr (struct sk_buff*) ;
 int ip_send_check (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static int nf_ct_ipv4_gather_frags(struct sk_buff *skb, u_int32_t user)
{
 int err;

 skb_orphan(skb);

 local_bh_disable();
 err = ip_defrag(skb, user);
 local_bh_enable();

 if (!err)
  ip_send_check(ip_hdr(skb));

 return err;
}
