
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ handle; } ;


 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static u32 bcbuf_acks(struct sk_buff *buf)
{
 return (u32)(unsigned long)TIPC_SKB_CB(buf)->handle;
}
