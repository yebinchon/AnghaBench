
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int channels; int precision; scalar_t__ offset; scalar_t__ onboard; } ;
struct snd_dbri {int lock; scalar_t__ regs; TYPE_1__ mm; } ;


 int CHIslave ;
 int D_C ;
 int D_ENPIO ;
 int D_MM ;
 int D_PIO0 ;
 int D_PIO1 ;
 int D_PIO2 ;
 int D_PIO3 ;
 scalar_t__ REG0 ;
 scalar_t__ REG2 ;
 int cs4215_setdata (struct snd_dbri*,int) ;
 int dprintk (int ,char*,int,int) ;
 int link_time_slot (struct snd_dbri*,int,int,int,int,scalar_t__) ;
 int reset_chi (struct snd_dbri*,int ,int) ;
 int sbus_readl (scalar_t__) ;
 int sbus_writel (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void cs4215_open(struct snd_dbri *dbri)
{
 int data_width;
 u32 tmp;
 unsigned long flags;

 dprintk(D_MM, "cs4215_open: %d channels, %d bits\n",
  dbri->mm.channels, dbri->mm.precision);





 cs4215_setdata(dbri, 1);
 udelay(125);
 spin_lock_irqsave(&dbri->lock, flags);
 tmp = sbus_readl(dbri->regs + REG0);
 tmp &= ~(D_C);
 sbus_writel(tmp, dbri->regs + REG0);


 sbus_writel(D_ENPIO | D_PIO1 | D_PIO3 |
      (dbri->mm.onboard ? D_PIO0 : D_PIO2), dbri->regs + REG2);

 reset_chi(dbri, CHIslave, 128);







 data_width = dbri->mm.channels * dbri->mm.precision;

 link_time_slot(dbri, 4, 16, 16, data_width, dbri->mm.offset);
 link_time_slot(dbri, 20, 4, 16, 32, dbri->mm.offset + 32);
 link_time_slot(dbri, 6, 16, 16, data_width, dbri->mm.offset);
 link_time_slot(dbri, 21, 6, 16, 16, dbri->mm.offset + 40);


 tmp = sbus_readl(dbri->regs + REG0);
 tmp |= D_C;
 sbus_writel(tmp, dbri->regs + REG0);
 spin_unlock_irqrestore(&dbri->lock, flags);

 cs4215_setdata(dbri, 0);
}
