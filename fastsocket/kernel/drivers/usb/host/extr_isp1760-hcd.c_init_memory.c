
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct isp1760_hcd {TYPE_1__* memory_pool; } ;
struct TYPE_2__ {scalar_t__ size; int free; scalar_t__ start; } ;


 int BLOCKS ;
 int BLOCK_1_NUM ;
 scalar_t__ BLOCK_1_SIZE ;
 int BLOCK_2_NUM ;
 scalar_t__ BLOCK_2_SIZE ;
 scalar_t__ BLOCK_3_SIZE ;
 int BUG_ON (int) ;
 scalar_t__ PAYLOAD_SIZE ;

__attribute__((used)) static void init_memory(struct isp1760_hcd *priv)
{
 int i;
 u32 payload;

 payload = 0x1000;
 for (i = 0; i < BLOCK_1_NUM; i++) {
  priv->memory_pool[i].start = payload;
  priv->memory_pool[i].size = BLOCK_1_SIZE;
  priv->memory_pool[i].free = 1;
  payload += priv->memory_pool[i].size;
 }


 for (i = BLOCK_1_NUM; i < BLOCK_1_NUM + BLOCK_2_NUM; i++) {
  priv->memory_pool[i].start = payload;
  priv->memory_pool[i].size = BLOCK_2_SIZE;
  priv->memory_pool[i].free = 1;
  payload += priv->memory_pool[i].size;
 }


 for (i = BLOCK_1_NUM + BLOCK_2_NUM; i < BLOCKS; i++) {
  priv->memory_pool[i].start = payload;
  priv->memory_pool[i].size = BLOCK_3_SIZE;
  priv->memory_pool[i].free = 1;
  payload += priv->memory_pool[i].size;
 }

 BUG_ON(payload - priv->memory_pool[i - 1].size > PAYLOAD_SIZE);
}
