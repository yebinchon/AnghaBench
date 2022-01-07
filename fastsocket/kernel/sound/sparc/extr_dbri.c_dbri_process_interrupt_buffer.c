
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dbri {size_t dbri_irqp; TYPE_1__* dma; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__* intr; } ;


 size_t DBRI_INT_BLK ;
 int dbri_process_one_interrupt (struct snd_dbri*,scalar_t__) ;

__attribute__((used)) static void dbri_process_interrupt_buffer(struct snd_dbri *dbri)
{
 s32 x;

 while ((x = dbri->dma->intr[dbri->dbri_irqp]) != 0) {
  dbri->dma->intr[dbri->dbri_irqp] = 0;
  dbri->dbri_irqp++;
  if (dbri->dbri_irqp == DBRI_INT_BLK)
   dbri->dbri_irqp = 1;

  dbri_process_one_interrupt(dbri, x);
 }
}
