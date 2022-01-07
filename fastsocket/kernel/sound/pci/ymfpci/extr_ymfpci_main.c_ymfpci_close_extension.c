
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int spdif_opened; int rear_opened; } ;


 int YDSXGR_MODE ;
 int YDSXGR_SECCONFIG ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;

__attribute__((used)) static void ymfpci_close_extension(struct snd_ymfpci *chip)
{
 if (! chip->rear_opened) {
  if (! chip->spdif_opened)
   snd_ymfpci_writel(chip, YDSXGR_MODE,
       snd_ymfpci_readl(chip, YDSXGR_MODE) & ~(1 << 30));
  snd_ymfpci_writew(chip, YDSXGR_SECCONFIG,
      (snd_ymfpci_readw(chip, YDSXGR_SECCONFIG) & ~0x0330) & ~0x0010);
 }
}
