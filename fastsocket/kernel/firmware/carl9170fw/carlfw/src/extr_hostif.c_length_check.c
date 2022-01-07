
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_desc {int totalLen; } ;
struct TYPE_2__ {int len; } ;
struct carl9170_tx_superframe {TYPE_1__ s; } ;
struct carl9170_tx_superdesc {int dummy; } ;


 struct carl9170_tx_superframe* __get_super (struct dma_desc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool length_check(struct dma_desc *desc)
{
 volatile struct carl9170_tx_superframe *super = __get_super(desc);

 if (unlikely(desc->totalLen < sizeof(struct carl9170_tx_superdesc)))
  return 0;
 if (unlikely(super->s.len > desc->totalLen))
  return 0;

 return 1;
}
