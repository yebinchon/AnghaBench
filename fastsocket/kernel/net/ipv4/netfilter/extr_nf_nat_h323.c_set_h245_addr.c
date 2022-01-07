
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union nf_inet_addr {int ip; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;
struct TYPE_5__ {int network; } ;
struct TYPE_6__ {TYPE_1__ iPAddress; } ;
struct TYPE_7__ {TYPE_2__ unicastAddress; } ;
typedef TYPE_3__ H245_TransportAddress ;


 int set_addr (struct sk_buff*,unsigned char**,int,int ,int ,int ) ;

__attribute__((used)) static int set_h245_addr(struct sk_buff *skb,
    unsigned char **data, int dataoff,
    H245_TransportAddress *taddr,
    union nf_inet_addr *addr, __be16 port)
{
 return set_addr(skb, data, dataoff,
   taddr->unicastAddress.iPAddress.network,
   addr->ip, port);
}
