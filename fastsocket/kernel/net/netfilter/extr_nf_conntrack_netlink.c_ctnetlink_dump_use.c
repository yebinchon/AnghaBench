
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;


 int CTA_USE ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,int ) ;
 int atomic_read (int *) ;
 int htonl (int ) ;

__attribute__((used)) static inline int
ctnetlink_dump_use(struct sk_buff *skb, const struct nf_conn *ct)
{
 NLA_PUT_BE32(skb, CTA_USE, htonl(atomic_read(&ct->ct_general.use)));
 return 0;

nla_put_failure:
 return -1;
}
