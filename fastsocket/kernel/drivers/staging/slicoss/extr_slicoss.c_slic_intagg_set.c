
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct adapter {TYPE_2__* card; TYPE_1__* slic_regs; } ;
struct TYPE_4__ {int loadlevel_current; } ;
struct TYPE_3__ {int slic_intagg; } ;


 int FLUSH ;
 int slic_reg32_write (int *,int ,int ) ;

__attribute__((used)) static void slic_intagg_set(struct adapter *adapter, u32 value)
{
 slic_reg32_write(&adapter->slic_regs->slic_intagg, value, FLUSH);
 adapter->card->loadlevel_current = value;
}
