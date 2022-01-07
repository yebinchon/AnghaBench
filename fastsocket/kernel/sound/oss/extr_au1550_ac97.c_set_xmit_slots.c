
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSC_AC97CFG ;
 int PSC_AC97CFG_DE_ENABLE ;
 int PSC_AC97CFG_TXSLOT_ENA (int) ;
 int PSC_AC97CFG_TXSLOT_MASK ;
 int PSC_AC97STAT ;
 int PSC_AC97STAT_DR ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static void
set_xmit_slots(int num_channels)
{
 u32 ac97_config, stat;

 ac97_config = au_readl(PSC_AC97CFG);
 au_sync();
 ac97_config &= ~(PSC_AC97CFG_TXSLOT_MASK | PSC_AC97CFG_DE_ENABLE);
 au_writel(ac97_config, PSC_AC97CFG);
 au_sync();

 switch (num_channels) {
 case 6:


  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(6);
  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(9);

 case 4:
  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(7);
  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(8);

 case 2:
 case 1:
  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(3);
  ac97_config |= PSC_AC97CFG_TXSLOT_ENA(4);
 }

 au_writel(ac97_config, PSC_AC97CFG);
 au_sync();

 ac97_config |= PSC_AC97CFG_DE_ENABLE;
 au_writel(ac97_config, PSC_AC97CFG);
 au_sync();



 do {
  stat = au_readl(PSC_AC97STAT);
  au_sync();
 } while ((stat & PSC_AC97STAT_DR) == 0);
}
