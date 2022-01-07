
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;


 int NF_ACCEPT ;

__attribute__((used)) static int generic_get_l4proto(const struct sk_buff *skb, unsigned int nhoff,
          unsigned int *dataoff, u_int8_t *protonum)
{

 return -NF_ACCEPT;
}
