
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {unsigned char* data; } ;
struct optdata_dn {int opt_data; scalar_t__ opt_status; int opt_optl; } ;


 int BUG_ON (int) ;
 int cpu_to_le16 (int) ;
 int memcpy (int ,unsigned char*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void dn_user_copy(struct sk_buff *skb, struct optdata_dn *opt)
{
 unsigned char *ptr = skb->data;
 u16 len = *ptr++;

 BUG_ON(len > 16);
 opt->opt_optl = cpu_to_le16(len);
 opt->opt_status = 0;
 memcpy(opt->opt_data, ptr, len);
 skb_pull(skb, len + 1);
}
