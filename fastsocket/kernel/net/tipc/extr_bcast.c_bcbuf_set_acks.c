
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* handle; } ;


 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static void bcbuf_set_acks(struct sk_buff *buf, u32 acks)
{
 TIPC_SKB_CB(buf)->handle = (void *)(unsigned long)acks;
}
