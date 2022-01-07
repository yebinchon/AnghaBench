
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {TYPE_2__* slic_regs; TYPE_1__* card; } ;
struct TYPE_4__ {int slic_reset; int slic_quiesce; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CARD_UP ;
 int FLUSH ;
 int SLIC_RESET_MAGIC ;
 int mdelay (int) ;
 int slic_reg32_write (int *,int ,int ) ;

__attribute__((used)) static void slic_soft_reset(struct adapter *adapter)
{
 if (adapter->card->state == CARD_UP) {
  slic_reg32_write(&adapter->slic_regs->slic_quiesce, 0, FLUSH);
  mdelay(1);
 }

 slic_reg32_write(&adapter->slic_regs->slic_reset, SLIC_RESET_MAGIC,
    FLUSH);
 mdelay(1);
}
