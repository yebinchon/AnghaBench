
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int len; int data; } ;
struct rsi {TYPE_2__ in_token; TYPE_1__ in_handle; } ;


 int RSI_HASHBITS ;
 int hash_mem (int ,int ,int ) ;

__attribute__((used)) static inline int rsi_hash(struct rsi *item)
{
 return hash_mem(item->in_handle.data, item->in_handle.len, RSI_HASHBITS)
      ^ hash_mem(item->in_token.data, item->in_token.len, RSI_HASHBITS);
}
