
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pool_id; } ;


 int FSOCKET_INVALID_POOL_ID ;

__attribute__((used)) static inline void skb_init_pool_id(void *foo)
{
 struct sk_buff *skb = (struct sk_buff *)foo;

 skb->pool_id = FSOCKET_INVALID_POOL_ID;
}
