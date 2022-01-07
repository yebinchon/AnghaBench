
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int status; } ;


 int CTA_STATUS ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,int ) ;
 int htonl (int ) ;

__attribute__((used)) static inline int
ctnetlink_dump_status(struct sk_buff *skb, const struct nf_conn *ct)
{
 NLA_PUT_BE32(skb, CTA_STATUS, htonl(ct->status));
 return 0;

nla_put_failure:
 return -1;
}
